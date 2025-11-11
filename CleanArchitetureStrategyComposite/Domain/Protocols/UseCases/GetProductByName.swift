//
//  GetProduct.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol GetProductByName {
    func execute(_ name: String) -> Product
}
