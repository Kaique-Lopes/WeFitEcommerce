//
//  QuantityControl.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 07/10/25.
//

import UIKit
import SnapKit

final class QuantityControl: UIControl {
    private let minusLabel = UILabel()
    private let plusLabel = UILabel()
    private let quantityLabel = UILabel()

    private(set) var quantity: Int = 1 {
        didSet {
            quantityLabel.text = "\(quantity)"
            sendActions(for: .valueChanged)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupGestures()
    }
    required init?(coder: NSCoder) { fatalError() }

    private func setupUI() {
        minusLabel.text = "–"
        plusLabel.text = "+"
        [minusLabel, quantityLabel, plusLabel].forEach {
            $0.textColor = AppColors.textPrimary
            $0.font = AppFonts.bold(size: 16)
            $0.textAlignment = .center
        }
        quantityLabel.text = "\(quantity)"
        let stack = UIStackView(arrangedSubviews: [minusLabel, quantityLabel, plusLabel])
        stack.axis = .horizontal
        stack.spacing = 8
        addSubview(stack)
        stack.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(6)
            make.height.equalTo(32)
        }
        layer.cornerRadius = 8
        backgroundColor = UIColor(white: 1, alpha: 0.06)
    }

    private func setupGestures() {
        minusLabel.isUserInteractionEnabled = true
        minusLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapMinus)))

        plusLabel.isUserInteractionEnabled = true
        plusLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapPlus)))
    }

    @objc private func didTapMinus() {
        guard quantity > 1 else { return }
        quantity -= 1
        animateTap()
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }

    @objc private func didTapPlus() {
        quantity += 1
        animateTap()
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }

    private func animateTap() {
        UIView.animate(withDuration: 0.08, animations: {
            self.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
        }, completion: { _ in
            UIView.animate(withDuration: 0.08) { self.transform = .identity }
        })
    }

    func set(quantity: Int) {
        self.quantity = max(1, quantity)
    }
}
