//
//  PaymentContext.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lucas Vasconcellos Côrtes on 11/14/25.
//

class PaymentContext {
    var paymentStrategy: PaymentStrategy = DebitStrategy()
    
    func setStrategy(_ strategy: PaymentStrategy) {
        self.paymentStrategy = strategy
    }
    
    func pay(amount: Double) -> Bool {
        paymentStrategy.processPayment(price: amount)
        return true
    }
}
