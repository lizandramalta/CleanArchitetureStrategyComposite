//
//  EnumPolymorph.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 11/11/25.
//

import Foundation

enum ElementNode: Decodable, Element {
    func executeSearch(name: String) -> (any Element)? {
        switch self {
        case .product(let p): p.executeSearch(name: name)
        case .category(let c): c.executeSearch(name: name)
        }
    }
    
    case product(Product)
    case category(Category)
    
    var id: UUID {
        switch self {
        case .product(let p): return p.id
        case .category(let c): return c.id
        }
    }

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
        case .product(let p): p.execute()
        case .category(let c): c.execute()
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


