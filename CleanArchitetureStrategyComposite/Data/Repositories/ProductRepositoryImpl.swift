//
//  ProductRepository.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

import Foundation

enum RepositoryError: Error {
	case productNotFound
	case categoryNotFound
}

struct ProductRepositoryImpl: ProductRepository {
	
	private var dataSource = MockAPI.shared.query()
	
	func getProductById(_ id: UUID) throws-> Product {
		for element in dataSource {
			if let found = element.findProduct(by: id){
				return found
			}
		}
		throw RepositoryError.productNotFound
	}
	
	func getProductPath(_ id: UUID) throws -> [Category] {
		for element in dataSource {
			if let categoryPath = element.findCategoryPath(to: id, currentPath: []){
				return categoryPath
			}
		}
		throw RepositoryError.categoryNotFound
	}
}

