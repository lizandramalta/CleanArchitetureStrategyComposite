//
//  MockData.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 11/11/25.
//

import Foundation

let MockData: [GenericElement] = [Category(
    id: UUID(uuidString: "A0E3B58B-5F96-4B96-9D7C-9F6F4B8A0C11")!,
    name: "Todas categorias",
    elements: [
        Category(
            id: UUID(uuidString: "9B0C9B7E-6F60-49F0-8F3A-4D4C1FF1EF10")!,
            name: "Eletrônicos",
            elements: [
                Category(
                    id: UUID(uuidString: "E2C7C3C8-3A3C-4B5D-8A9C-2B1F7B7B2D11")!,
                    name: "Celulares",
                    elements: [
                        Product(id: UUID(uuidString: "c470840e-078f-4030-88ed-3a22fc7da121")!, name: "iPhone 14 Pro", price: 7999.0),
                        Product(id: UUID(uuidString: "cf0a1585-0a5b-4a91-8b3e-75400042a914")!, name: "iPhone 13", price: 5999.0),
                        Product(id: UUID(uuidString: "64396721-59fa-4ff4-9f7a-ca464b97bfbe")!, name: "Samsung S23", price: 4999.0)
                    ]
                ),
                Category(
                    id: UUID(uuidString: "c9af8bd7-548d-4f58-8348-c47e0db67c84")!,
                    name: "Notebooks",
                    elements: [
                        Product(id: UUID(uuidString: "a2f60c20-2cbd-4a56-bd20-f1a2da4641ae")!, name: "MacBook Air M2", price: 8999.0),
                        Product(id: UUID(uuidString: "6365bd60-e6bc-4d68-bb30-0e01d114b4e4")!, name: "Dell XPS 13", price: 7499.0)
                    ]
                ),
                Category(
                    id: UUID(uuidString: "f5cd980d-2f53-4c47-b12f-612d67d45865")!,
                    name: "Acessórios",
                    elements: [
                        Product(id: UUID(uuidString: "ef73416c-b3b7-4f08-857a-d2d58259ecbd")!, name: "AirPods Pro", price: 1999.0),
                        Product(id: UUID(uuidString: "84ccad22-34f6-4c4b-ac8d-4b18f9d401a2")!, name: "Carregador MagSafe", price: 349.0),
                        Product(id: UUID(uuidString: "52de73f6-5ae3-4ea0-aa57-391c119bff97")!, name: "Mouse Logitech MX Master 3", price: 499.0)
                    ]
                )
            ]
        ),
        Category(
            id: UUID(uuidString: "c13f9773-abc0-48ce-b89e-dfa0bc15ed3e")!,
            name: "Casa e Cozinha",
            elements: [
                Category(
                    id: UUID(uuidString: "bdfc64e9-20fb-499c-9c33-109207d71468")!,
                    name: "Eletroportáteis",
                    elements: [
                        Product(id: UUID(uuidString: "6831b0a8-b407-4ab8-a987-fdc3128d483e")!, name: "Air Fryer Philips", price: 499.0),
                        Product(id: UUID(uuidString: "5914a5ba-4235-45b6-b740-faaa1f9cb844")!, name: "Liquidificador Oster", price: 299.0),
                        Product(id: UUID(uuidString: "6c4fef58-efd2-4334-a127-e5432fa05589")!, name: "Cafeteira Nespresso", price: 699.0)
                    ]
                ),
                Category(
                    id: UUID(uuidString: "b189c495-f732-4cab-b7bf-eca2e62917b8")!,
                    name: "Decoração",
                    elements: [
                        Product(id: UUID(uuidString: "fe9f5d06-33ce-44bd-9d4c-447c1295101b")!, name: "Luminária LED Minimalista", price: 159.0),
                        Product(id: UUID(uuidString: "79574bb4-0c8d-45a9-a2f9-7e70e0c99963")!, name: "Vela Aromática Bamboo", price: 49.0)
                    ]
                )
            ]
        ),
        Category(
            id: UUID(uuidString: "fc7ffafa-cac4-4ba7-a72b-b1140ba3c431")!,
            name: "Moda",
            elements: [
                Category(
                    id: UUID(uuidString: "45cf885b-6b6f-40e4-a859-3685f7ecfaf3")!,
                    name: "Roupas",
                    elements: [
                        Product(id: UUID(uuidString: "4badb46c-9c74-4402-a34e-a615617884d5")!, name: "Camiseta Oversized", price: 79.9),
                        Product(id: UUID(uuidString: "5c8c03b2-2bd7-451b-9cd9-197dd75eb7bc")!, name: "Jaqueta Bomber Preta", price: 249.9)
                    ]
                ),
                Category(
                    id: UUID(uuidString: "8694d99a-c1b3-4473-a687-ff4379991097")!,
                    name: "Acessórios",
                    elements: [
                        Product(id: UUID(uuidString: "5ffbc383-ac4c-45c1-847f-e803ffb3f15a")!, name: "Boné Preto Minimalista", price: 59.9),
                        Product(id: UUID(uuidString: "cce7bf4b-45c3-4885-83cc-124360c19994")!, name: "Relógio Casio Vintage", price: 199.9)
                    ]
                ),
                Category(
                    id: UUID(uuidString: "1056e553-da7f-4019-8bdb-225ef3c944ec")!,
                    name: "Calçados",
                    elements: [
                        Product(id: UUID(uuidString: "57ffe4f3-43c1-4cc2-b638-79876bc982e0")!, name: "Tênis Nike Air Max", price: 599.0),
                        Product(id: UUID(uuidString: "85e89a82-d9c1-40a9-a54f-e88d550ff4b3")!, name: "Chinelo Havaianas Preto", price: 39.9)
                    ]
                )
            ]
        ),
        Category(
            id: UUID(uuidString: "f8434b7d-a13c-4a70-8874-07398cb648c7")!,
            name: "Esportes",
            elements: [
                Category(
                    id: UUID(uuidString: "6021c0d1-9fb2-4887-a35e-dbae023f9563")!,
                    name: "Fitness",
                    elements: [
                        Product(id: UUID(uuidString: "16ecdbe1-b202-4937-8d2b-edd8f0e02323")!, name: "Tapete de Yoga Premium", price: 199.0),
                        Product(id: UUID(uuidString: "293aa924-f12e-4f5b-9cec-7250746a6ee1")!, name: "Corda de Pular Speed", price: 49.9),
                        Product(id: UUID(uuidString: "737772ff-5b61-4b25-b961-9f3d509927d0")!, name: "Halter 5kg (Par)", price: 129.9)
                    ]
                ),
                Category(
                    id: UUID(uuidString: "abcc055b-cabd-4116-9981-adc897b11d7c")!,
                    name: "Pilates",
                    elements: [
                        Product(id: UUID(uuidString: "3b14e6bd-bff4-4730-81f6-23d292195332")!, name: "Bola de Pilates 65cm", price: 119.9)
                    ]
                )
            ]
        )
    ]
)]
