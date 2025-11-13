//
//  ElementRepositoryImpl.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 12/11/25.
//

import Foundation

struct ElementRepositoryImpl: ElementRepository {
    func loadAll() -> [any GenericElement] {
        return MockAPI.shared.query()
    }
}
