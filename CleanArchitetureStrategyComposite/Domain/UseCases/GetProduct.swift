//
//  GetProduct.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol GetProduct {
    func getProductById(_ id: UUID) -> Product
    func getCategoryByProductId(_ id: UUID) -> Category
}
