//
//  ProductDetailView.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 13/11/25.
//

import SwiftUI

struct ProductDetailView: View {
    @State private var vm: ProductDetailViewModel
    let id: UUID
    
    init(id: UUID) {
        self.id = id
        let productRepository = ProductRepositoryImpl()
        let getProductById = GetProductById(repository: productRepository)
        let getCategoryByProductId = GetCategoryByProductId(repository: productRepository)
        _vm = State(initialValue: ProductDetailViewModel(getProductByIdUseCase: getProductById, getCategoryByProductIdUseCase: getCategoryByProductId))
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            if let product = vm.product {
                Image(systemName: "cart")
                    .font(.system(size: 80))
                    .foregroundStyle(.blue)
                
                VStack(spacing: 8) {
                    Text(product.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    if let category = vm.productCategory {
                        Text(category.name)
                            .font(.title3)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                    }
                }
                
                Text(product.price, format: .currency(code: "BRL"))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Spacer()
            } else if vm.isLoading {
                ProgressView("Carregando...")
            } else {
                Text("Produto não encontrado")
                    .foregroundStyle(.secondary)
            }
        }
        .onAppear {
            vm.fetchInfo(id: id)
        }
        .padding()
        .navigationTitle("Produto")
        .navigationBarTitleDisplayMode(.inline)
    }
}
