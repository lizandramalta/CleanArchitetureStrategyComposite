//
//  ProductDetailViewModel.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 13/11/25.
//


import Foundation

@MainActor
@Observable
final class ProductDetailViewModel {
    private let getProductByIdUseCase: GetProductById
    private let getCategoryByProductIdUseCase: GetCategoryByProductId
    
    var product: Product?
    var productCategory: Category?
    var isLoading = true
    
    init(getProductByIdUseCase: GetProductById, getCategoryByProductIdUseCase: GetCategoryByProductId) {
        self.getProductByIdUseCase = getProductByIdUseCase
        self.getCategoryByProductIdUseCase = getCategoryByProductIdUseCase
    }
    
    func fetchInfo(id: UUID) {
        isLoading = true
        defer { isLoading = false }
        do {
            product = try getProductByIdUseCase.execute(id)
            productCategory = try getCategoryByProductIdUseCase.execute(id)
        } catch {
            print(error)
        }
    }
    
}
