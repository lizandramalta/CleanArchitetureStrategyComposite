//
//  PayProduct.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

protocol PayProduct {
    func setStrategy(_ strategy: PaymentStrategy) -> Void
    func executePayment(price: Double) -> Void
}
