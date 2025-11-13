//
//  CategoryRepository.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

enum CategoryRepositoryError: Error {
	case categoryNotFound
}

struct CategoryRepositoryImpl: CategoryRepository {
	private var dataSource = MockAPI.shared.query()
	
	func loadAll() throws -> [Category] {
		return dataSource.compactMap { $0 as? Category }
	}
}
