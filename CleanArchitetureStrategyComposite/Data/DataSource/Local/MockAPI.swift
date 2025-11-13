//
//  MockAPI.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 11/11/25.
//

public struct MockAPI {
    public static let shared = MockAPI()
    
    private init(){}
    
    func query() -> [GenericElement] {
        return MockData
    }
}
