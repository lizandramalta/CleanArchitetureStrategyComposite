//
//  CategoryListView.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Cauê Carneiro on 12/11/25.
//

import SwiftUI

struct CategoryListView: View {
    let categoria: Categoria
    
    var body: some View {
        List {
            if !categoria.subcategorias.isEmpty {
                Section("Categorias") {
                    ForEach(categoria.subcategorias) { subcategoria in
                        NavigationLink(destination: CategoryListView(categoria: subcategoria)) {
                            HStack {
                                Image(systemName: "folder")
                                    .foregroundStyle(.blue)
                                Text(subcategoria.name)
                                Spacer()
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            
            if !categoria.produtos.isEmpty {
                Section("Produtos") {
                    ForEach(categoria.produtos) { produto in
                        NavigationLink(destination: ProductDetailView(produto: produto)) {
                            ProductRow(produto: produto)
                        }
                    }
                }
            }
        }
        .navigationTitle(categoria.name)
        .navigationBarTitleDisplayMode(.large)
    }
}
