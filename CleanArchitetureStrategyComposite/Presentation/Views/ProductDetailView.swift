//
//  ProductDetailView.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Cauê Carneiro on 12/11/25.
//

import SwiftUI

struct ProductDetailView: View {
    let produto: Produto
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "cart")
                .font(.system(size: 80))
                .foregroundStyle(.blue)
            
            Text(produto.name)
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            Text(brl(produto.price))
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Produto")
        .navigationBarTitleDisplayMode(.inline)
    }
}
