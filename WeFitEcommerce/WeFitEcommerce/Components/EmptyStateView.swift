//
//  EmptyStateView.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 06/10/25.
//

import UIKit
import SnapKit

final class EmptyStateView: UIView {
    private let imageView = UIImageView()
    private let titleLabel = TitleLabel()
    private let actionButton = PrimaryButton(title: "")

    init(title: String, buttonTitle: String) {
        super.init(frame: .zero)
        titleLabel.text = title
        actionButton.setTitle(buttonTitle, for: .normal)
        setup()
    }
    required init?(coder: NSCoder) { fatalError() }

    private func setup() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(actionButton)
        imageView.contentMode = .scaleAspectFit

        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(24)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(180)
        }

        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
        }

        actionButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(48)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-24)
        }
    }

    func onAction(_ target: Any?, action: Selector) {
        actionButton.addTarget(target, action: action, for: .touchUpInside)
    }
}
