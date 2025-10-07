//
//  MovieServiceProtocol.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 07/10/25.
//

import Foundation

protocol MovieServiceProtocol {
    func fetchPopular(completion: @escaping (Result<[Movie], Error>) -> Void)
}
