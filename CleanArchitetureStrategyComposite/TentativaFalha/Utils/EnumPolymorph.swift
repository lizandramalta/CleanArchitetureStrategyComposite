//
//  EnumPolymorph.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 11/11/25.
//

import Foundation

enum ElementNode: Decodable, Element {
    case product(Product)
    case category(Category)

    var name: String {
        switch self {
        case .product(let p): return p.name
        case .category(let c): return c.name
        }
    }
    
    var type: String {
        switch self {
        case .product(let p): return p.type
        case .category(let c): return c.type
        }
    }
    
    func execute() {
        switch self {
        case .product(let p): return p.execute()
        case .category(let c): return c.execute()
        }
    }
    
    func executeSearch(name: String) -> (any Element)? {
        switch self {
        case .product(let p): return p.executeSearch(name: name)
        case .category(let c): return c.executeSearch(name: name)
        }
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "produto":
            self = .product(try Product(from: decoder))
        case "categoria":
            self = .category(try Category(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(forKey: .type,
                in: container, debugDescription: "Tipo desconhecido: \(type)")
        }
    }

    private enum CodingKeys: String, CodingKey { case type }
}


