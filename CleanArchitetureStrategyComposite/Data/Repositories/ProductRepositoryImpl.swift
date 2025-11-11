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
        return Product(id: UUID(), name: " ", type: " ")
	}
	
	func getCategoryByProductName(_ name: String) -> Category {
        guard let dados = loadMockData() else  { return Category(id: UUID(), name: " ", type: " ")}
        for dado in dados {
            print(dado.executeSearch(name: name) ?? "")
        }
        return Category(id: UUID(), name: " ", type: " ")
	}
	
	
}

#Playground {
    var repository = ProductRepositoryImpl()
    print(repository.getCategoryByProductName("iPhone 14 Pro"))
}
