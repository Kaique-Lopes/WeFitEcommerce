//
//  PrimaryButton.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 06/10/25.
//

import UIKit

final class PrimaryButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configButton()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) not implemented") }

    convenience init(title: String) {
        self.init(frame: .zero)
        setTitle(title, for: .normal)
    }

    private func configButton() {
        layer.cornerRadius = 8
        titleLabel?.font = AppFonts.bold(size: 16)
        backgroundColor = AppColors.primary
        setTitleColor(.white, for: .normal)
        heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
}
