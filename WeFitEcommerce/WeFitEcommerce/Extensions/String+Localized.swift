//
//  String+Localized.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 06/10/25.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
