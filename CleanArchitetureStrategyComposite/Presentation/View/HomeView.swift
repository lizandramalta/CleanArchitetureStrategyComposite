//
//  CategoryVuew.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 13/11/25.
//

import SwiftUI

struct HomeView: View {
    @Environment(HomeViewModel.self) private var vm
    
    var body: some View {
        List {
            if !vm.elements.isEmpty {
                ForEach(vm.elements, id: \.id) { element in
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
                }
            }
        }
        .navigationTitle("Minha Loja")
        .navigationBarTitleDisplayMode(.large)
    }
}
