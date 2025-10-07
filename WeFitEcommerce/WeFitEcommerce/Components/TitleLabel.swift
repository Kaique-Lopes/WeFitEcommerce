//
//  TitleLabel.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 06/10/25.
//

import UIKit

final class TitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        font = AppFonts.bold(size: 18)
        textColor = AppColors.textPrimary
        numberOfLines = 0
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) not implemented") }
}
