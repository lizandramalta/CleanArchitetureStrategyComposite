//
//  CreditStrategy.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

class CreditStrategy: PaymentStrategy {
    var name = "Cartão de Crédito"
    
    func processPayment(price: Double) {
        print("Pagamento de \(price) com cartão de crédito")
    }
}
