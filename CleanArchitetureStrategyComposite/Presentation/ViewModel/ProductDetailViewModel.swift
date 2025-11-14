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
	private let getProductPathUseCase: GetProductPath
    
    var product: Product?
    var productPath: [Category]?
	var productPathString = ""
    var isLoading = true
    
    init(getProductByIdUseCase: GetProductById, getProductPathUseCase: GetProductPath) {
        self.getProductByIdUseCase = getProductByIdUseCase
        self.getProductPathUseCase = getProductPathUseCase
    }
    
	func fetchInfo(id: UUID) {
		isLoading = true
		defer { isLoading = false }
		
		do {
			product = try getProductByIdUseCase.execute(id)
			let path = try getProductPathUseCase.execute(id)
			productPath = path
			productPathString = path.map { $0.name }.joined(separator: " > ")
			
		} catch {
			print(error)
			productPathString = "Categoria não encontrada"
		}
	}
}
