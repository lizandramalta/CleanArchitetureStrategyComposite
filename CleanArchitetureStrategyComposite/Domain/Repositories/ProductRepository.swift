//
//  ProductRepository.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//
import Foundation

protocol ProductRepository {
	func getProductById(_ id: UUID) -> Product
	func getCategoryByProductId(_ id: UUID) -> Category
}
