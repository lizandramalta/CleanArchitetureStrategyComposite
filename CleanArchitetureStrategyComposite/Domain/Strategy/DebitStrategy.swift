//
//  DebitStrategy.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

class DebitStrategy: PaymentStrategy {
    func processPayment(price: Double) {
        print("Pagamento de \(price) com cartão de débito")
    }
}
