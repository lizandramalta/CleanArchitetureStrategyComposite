//
//  CategoryRepository.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

protocol CategoryRepository {
	func loadAll() -> [Element]
}
