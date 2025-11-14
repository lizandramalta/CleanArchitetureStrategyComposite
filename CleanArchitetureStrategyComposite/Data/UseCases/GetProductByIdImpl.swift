//
//  GetProductImpl.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//
import Foundation

final class GetProductByIdImpl: GetProductById {
    private let repository: ProductRepository
    
    init(repository: ProductRepository) {
        self.repository = repository
    }
    
	func execute(_ id: UUID) throws -> Product {
        return try repository.getProductById(id)
	}
	
}
