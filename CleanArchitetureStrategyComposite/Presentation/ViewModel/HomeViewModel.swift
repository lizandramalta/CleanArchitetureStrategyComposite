//
//  CategoryViewModel.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 13/11/25.
//

import Foundation

@MainActor
@Observable
final class HomeViewModel {
    private let fetchCategoriesUseCase: FetchAllProductsAndCategories
    
    var elements: [any GenericElement] = []
    var isLoading = false
    
    init(fetchCategoriesUseCase: FetchAllProductsAndCategories) {
        self.fetchCategoriesUseCase = fetchCategoriesUseCase
        fetchCategories()
    }
    
    func fetchCategories() {
        isLoading = true
        defer { isLoading = false }
        do {
            elements = try  fetchCategoriesUseCase.execute()
        } catch {
            print(error)
        }
    }
}
