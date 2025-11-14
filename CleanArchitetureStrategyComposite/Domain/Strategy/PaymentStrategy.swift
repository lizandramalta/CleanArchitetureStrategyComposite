//
//  PaymentStrategy.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

protocol PaymentStrategy {
    var name: String { get }
    func processPayment(price: Double)
}

extension PaymentStrategy {
    func processPayment(price: Double) {
        print("Pagamento de \(price) realizado com \(name)")
    }
}
