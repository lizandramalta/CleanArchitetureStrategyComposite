//
//  GetProduct.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol GetProductById {
    func execute(_ id: UUID) throws -> Product
}
