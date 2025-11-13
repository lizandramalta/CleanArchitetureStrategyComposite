//
//  CategoryListView.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 13/11/25.
//

import SwiftUI

struct CategoryListView: View {
    let category: Category

    var body: some View {
        List {
            if !category.elements.isEmpty {
                Section(category.name) {
                    ForEach(category.elements, id: \.id) { element in
                        if let subcategory = element as? Category {
                            NavigationLink(
                                destination: CategoryListView(category: subcategory)
                            ) {
                                HStack {
                                    Image(systemName: "folder")
                                        .foregroundStyle(.blue)
                                    Text(subcategory.name)
                                    Spacer()
                                }
                                .padding(.vertical, 4)
                            }
                        }
                        
                        if let product = element as? Product {
                            NavigationLink(
                                destination: ProductDetailView(id: element.id)
                            ) {
                                ProductRow(product: product)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Minha loja")
        .navigationBarTitleDisplayMode(.large)
    }
}
