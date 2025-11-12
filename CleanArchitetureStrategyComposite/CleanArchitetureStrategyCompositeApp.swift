//
//  CleanArchitetureStrategyCompositeApp.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import SwiftUI

@main
struct CleanArchitetureStrategyCompositeApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                CategoryListView(categoria: loja)
            }
        }
    }
}
