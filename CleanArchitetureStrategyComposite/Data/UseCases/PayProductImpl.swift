//
//  PayProductImpl.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//


final class PayProductImpl: PayProduct {
    private var strategy: PaymentStrategy

    init(strategy: PaymentStrategy) {
        self.strategy = strategy
    }

    func setStrategy(_ strategy: PaymentStrategy) {
        self.strategy = strategy
    }

    func executePayment(price: Double) {
        strategy.processPayment(price: price)
    }
}

