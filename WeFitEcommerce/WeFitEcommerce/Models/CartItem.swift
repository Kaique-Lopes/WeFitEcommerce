//
//  CartItem.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 07/10/25.
//

import Foundation

struct CartItem {
    let movie: Movie
    var quantity: Int
    var subtotal: Double { Double(quantity) * movie.price }
}
