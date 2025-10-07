//
//  MovieServiceMock.swift
//  WeFitEcommerce
//
//  Created by Kaique Lopes on 07/10/25.
//

import Foundation

final class MovieServiceMock: MovieServiceProtocol {
    func fetchPopular(completion: @escaping (Result<[Movie], Error>) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.7) {
            let movies = [
                Movie(id: 1, title: "Viúva Negra", posterName: "black_widow", price: 9.99),
                Movie(id: 2, title: "Homem Aranha: No Way Home", posterName: "spiderman", price: 29.99),
                Movie(id: 3, title: "Shang-Chi", posterName: "shang_chi", price: 30.99)
            ]
            completion(.success(movies))
        }
    }
}
