//
//  ProductRepository.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//
import Foundation
import Playgrounds

struct ProductRepositoryImpl: ProductRepository {
	func getProductByName(_ name: String) -> Product {
        return Product(id: UUID() , name: " ", type: " ")
	}
	
	func getCategoryByProductName(_ name: String) -> Category {
        return Category(id: UUID() , name: " ", type: " ")
	}
	
	
}

