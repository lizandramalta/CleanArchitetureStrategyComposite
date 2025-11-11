//
//  EnumPolymorph.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 11/11/25.
//

import Foundation

enum ElementNode: Codable, Element {
    case product(Produto)
    case category(Categoria)
    
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
            self = .product(try Produto(from: decoder))
        case "categoria":
            self = .category(try Categoria(from: decoder))
        default:
            throw DecodingError.dataCorruptedError(forKey: .type,
                in: container, debugDescription: "Tipo desconhecido: \(type)")
        }
    }

    func encode(to encoder: Encoder) throws {
        switch self {
        case .product(let p): try p.encode(to: encoder)
        case .category(let c): try c.encode(to: encoder)
        }
    }

    private enum CodingKeys: String, CodingKey { case type }
}


