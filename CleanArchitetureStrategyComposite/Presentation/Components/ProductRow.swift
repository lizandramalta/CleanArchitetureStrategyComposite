//
//  ProductRow.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 13/11/25.
//

import SwiftUI

struct ProductRow: View {
    let product: Product
    
    var body: some View {
        HStack {
            Image(systemName: "cart")
                .foregroundStyle(.green)
            
            Text(product.name)
            
            Spacer()
            
            Text(product.price, format: .currency(code: "BRL"))
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 4)
    }
}
