//
//  CleanArchitetureStrategyCompositeApp.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import SwiftUI

@main
struct CleanArchitetureStrategyCompositeApp: App {
    private let categoryRepository: CategoryRepository
    private let fetchAllProductsAndCategories: FetchAllProductsAndCategories
    
    @State private var homeVM: HomeViewModel
    
    init() {
        let categoryRepository = CategoryRepositoryImpl()
        self.categoryRepository = categoryRepository
        
        let fetchAll = FetchAllProductsAndCategoriesImpl(repository: categoryRepository)
        self.fetchAllProductsAndCategories = fetchAll
        
        _homeVM = State(initialValue: HomeViewModel(fetchCategoriesUseCase: fetchAll))
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .environment(homeVM)
                  
            }
       
        }
    }
}
