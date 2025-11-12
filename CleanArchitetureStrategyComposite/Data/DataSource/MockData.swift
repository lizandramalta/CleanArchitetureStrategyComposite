//
//  MockData.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Cauê Carneiro on 12/11/25.
//

import Foundation

let loja = Categoria(
    id: UUID(uuidString: "bb196f64-bb90-4127-ad88-9c21d76f3fab")!,
    name: "Loja",
    subcategorias: [
        // Eletrônicos
        Categoria(
            id: UUID(uuidString: "ecc96c51-5b14-41d4-b2d1-e3161164867d")!,
            name: "Eletrônicos",
            subcategorias: [
                // Celulares
                Categoria(
                    id: UUID(uuidString: "5fad6062-6a03-4977-9e6a-a62b384a9eb4")!,
                    name: "Celulares",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "5f5b0513-f224-4aa2-9dbc-e8a7dc662867")!, name: "iPhone 14 Pro", price: 7999.0),
                        Produto(id: UUID(uuidString: "e0a273e8-7c35-495b-9950-c9cffa6bb536")!, name: "iPhone 13", price: 5999.0),
                        Produto(id: UUID(uuidString: "50775e5b-f063-4d49-af7c-d547cab83bc3")!, name: "Samsung S23", price: 4999.0)
                    ]
                ),
                // Notebooks
                Categoria(
                    id: UUID(uuidString: "627054f9-10bc-447f-a71b-c9b4087bbd8e")!,
                    name: "Notebooks",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "aabab3fd-794d-4a7b-b94c-f18504771daf")!, name: "MacBook Air M2", price: 8999.0),
                        Produto(id: UUID(uuidString: "f78d6b44-79b3-40f7-9502-62639667464b")!, name: "Dell XPS 13", price: 7499.0)
                    ]
                ),
                // Acessórios
                Categoria(
                    id: UUID(uuidString: "6cbbbd79-7478-4eb9-97ae-90977f130a5d")!,
                    name: "Acessórios",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "f346a4bc-8bd9-4257-910d-7b70d54cf37f")!, name: "AirPods Pro", price: 1999.0),
                        Produto(id: UUID(uuidString: "c0770a51-67af-4471-85e0-43e3ff2259b4")!, name: "Carregador MagSafe", price: 349.0),
                        Produto(id: UUID(uuidString: "854c5559-27ac-4ec1-81a9-b4aa9c16d2a8")!, name: "Mouse Logitech MX Master 3", price: 499.0)
                    ]
                )
            ],
            produtos: [
                Produto(id: UUID(uuidString: "26de4288-a19f-40c6-991c-d452c9779a84")!, name: "Smart TV 55\" 4K", price: 3299.0)
            ]
        ),
        
        // Casa e Cozinha
        Categoria(
            id: UUID(uuidString: "eea7403a-2d84-4612-99f4-7033afc6fa55")!,
            name: "Casa e Cozinha",
            subcategorias: [
                // Eletroportáteis
                Categoria(
                    id: UUID(uuidString: "5c2299a0-7ceb-4050-bcb2-90a20ae67f97")!,
                    name: "Eletroportáteis",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "b5e4a9b6-6bad-4100-91b9-32bd0fab7124")!, name: "Air Fryer Philips", price: 499.0),
                        Produto(id: UUID(uuidString: "9f5d57d0-f330-411d-9f5d-6309f81dcd9a")!, name: "Liquidificador Oster", price: 299.0),
                        Produto(id: UUID(uuidString: "43a9e674-e329-4db4-b555-436401113ebb")!, name: "Cafeteira Nespresso", price: 699.0)
                    ]
                ),
                // Decoração
                Categoria(
                    id: UUID(uuidString: "e384222a-6c42-48ba-aa73-932246dff2de")!,
                    name: "Decoração",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "2da65780-9e31-4173-bda9-1ae56c71a354")!, name: "Luminária LED Minimalista", price: 159.0),
                        Produto(id: UUID(uuidString: "3e04a0c6-e0b3-4a98-974a-82d896956570")!, name: "Vela Aromática Bamboo", price: 49.0)
                    ]
                )
            ],
            produtos: [
                Produto(id: UUID(uuidString: "9c3af513-2a37-4179-8cfb-96fc20c686e8")!, name: "Conjunto de Facas Inox", price: 229.0)
            ]
        ),
        
        // Moda
        Categoria(
            id: UUID(uuidString: "a930bdb0-041a-4f2d-9b8b-f8ee05d4a2fb")!,
            name: "Moda",
            subcategorias: [
                // Roupas
                Categoria(
                    id: UUID(uuidString: "2af4b1b9-f53e-4f4d-83ff-1cf8636febf3")!,
                    name: "Roupas",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "5ece9633-dc74-4772-b46b-ac91e84770e2")!, name: "Camiseta Oversized", price: 79.9),
                        Produto(id: UUID(uuidString: "35c7ad4e-b536-4c5f-89e3-4b1d74ddee77")!, name: "Jaqueta Bomber Preta", price: 249.9)
                    ]
                ),
                // Acessórios
                Categoria(
                    id: UUID(uuidString: "95a0c010-e348-46d1-b1ef-221de57f8175")!,
                    name: "Acessórios",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "d62e46fc-05bc-4ed6-b06c-2abca00ac377")!, name: "Boné Preto Minimalista", price: 59.9),
                        Produto(id: UUID(uuidString: "c0f5b355-2b67-4d9d-9a42-ce3cd6b68775")!, name: "Relógio Casio Vintage", price: 199.9)
                    ]
                ),
                // Calçados
                Categoria(
                    id: UUID(uuidString: "9d4c11b6-6700-4da5-ba46-3a745a371257")!,
                    name: "Calçados",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "ec31377a-cd7d-4eec-999a-cc849a59fedc")!, name: "Tênis Nike Air Max", price: 599.0),
                        Produto(id: UUID(uuidString: "dbf8d61d-ed20-48e9-9e21-20fed0eb4ed0")!, name: "Chinelo Havaianas Preto", price: 39.9)
                    ]
                )
            ],
            produtos: []
        ),
        
        // Esportes
        Categoria(
            id: UUID(uuidString: "68d75b1f-16b9-4bd9-8169-1f6e6a0e83a3")!,
            name: "Esportes",
            subcategorias: [
                // Fitness
                Categoria(
                    id: UUID(uuidString: "bfe456ae-078b-43a6-97cf-78c96c6e72cd")!,
                    name: "Fitness",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "18836a75-31c5-4a56-8d44-386b0e947f67")!, name: "Tapete de Yoga Premium", price: 199.0),
                        Produto(id: UUID(uuidString: "48fc45e1-be82-43a5-8f9a-6c3b20d0fa0c")!, name: "Corda de Pular Speed", price: 49.9),
                        Produto(id: UUID(uuidString: "49e6a471-74c6-4005-a9bc-759701cdd416")!, name: "Halter 5kg (Par)", price: 129.9)
                    ]
                ),
                // Pilates
                Categoria(
                    id: UUID(uuidString: "17abccc8-1eff-4d05-8316-65b585e3c15f")!,
                    name: "Pilates",
                    subcategorias: [],
                    produtos: [
                        Produto(id: UUID(uuidString: "91b39b64-4a65-4b89-a1e9-48594d2ac19a")!, name: "Bola de Pilates 65cm", price: 119.9)
                    ]
                )
            ],
            produtos: [
                Produto(id: UUID(uuidString: "280d76a0-8ed8-4e3f-8c9c-76077ffd470c")!, name: "Squeeze Térmico 750ml", price: 89.9)
            ]
        )
    ],
    produtos: []
)
