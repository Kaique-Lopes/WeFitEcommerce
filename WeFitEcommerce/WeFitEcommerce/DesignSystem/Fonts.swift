//
//  Fonts.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 06/10/25.
//

import UIKit

enum AppFonts {
    static func regular(size: CGFloat) -> UIFont {
        UIFont.systemFont(ofSize: size, weight: .regular)
    }

    static func medium(size: CGFloat) -> UIFont {
        UIFont.systemFont(ofSize: size, weight: .medium)
    }

    static func bold(size: CGFloat) -> UIFont {
        UIFont.systemFont(ofSize: size, weight: .bold)
    }
}
