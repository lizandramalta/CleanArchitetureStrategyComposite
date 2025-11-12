//
//  ProductRow.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Cauê Carneiro on 12/11/25.
//

import SwiftUI

struct ProductRow: View {
    let produto: Produto
    
    var body: some View {
        HStack {
            Image(systemName: "cart")
                .foregroundStyle(.green)
            
            Text(produto.name)
            
            Spacer()
            
            Text(brl(produto.price))
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 4)
    }
}
