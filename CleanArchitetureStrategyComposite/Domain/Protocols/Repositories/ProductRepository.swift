//
//  ProductRepository.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//
import Foundation

protocol ProductRepository {
	func getProductByName(_ name: String) -> Product
	func getCategoryByProductName(_ name: String) -> Category
}
