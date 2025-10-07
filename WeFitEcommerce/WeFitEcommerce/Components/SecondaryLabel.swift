//
//  BodyLabel.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 06/10/25.
//

import UIKit

final class SecondaryLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = AppFonts.regular(size: 14)
        textColor = AppColors.textSecondary
        numberOfLines = 0
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) not implemented") }
}
