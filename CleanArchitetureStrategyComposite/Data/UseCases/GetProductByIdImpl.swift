//
//  GetProductImpl.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//
import Foundation

class GetProductByNameImpl: GetProductByName {
    private let repository: ProductRepository
    
    init(repository: ProductRepository) {
        self.repository = repository
    }
    
	func execute(_ name: String) -> Product {
        return repository.getProductByName(name)
	}
	
}
