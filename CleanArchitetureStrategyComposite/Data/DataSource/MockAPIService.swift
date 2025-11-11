//
//  MockAPIService.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 10/11/25.
//

import Foundation

func loadMockData() -> [Category]? {
    guard let url = Bundle.main.url(forResource: "jsonProdutos", withExtension: "json"),
    let data = try? Data(contentsOf: url) else {
        return nil
    }
    
    let decoder = JSONDecoder()

    print("Vai decodar")
    let decodedData: [Category] = try! decoder.decode([Category].self, from: data)
    print("Decodou com sucesso")
    return decodedData
}
