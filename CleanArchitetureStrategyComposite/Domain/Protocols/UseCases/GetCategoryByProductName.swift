//
//  GetCategoryByProduct.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

import Foundation

protocol GetCategoryByProductName {
	func execute(_ name: String) -> Category
}
