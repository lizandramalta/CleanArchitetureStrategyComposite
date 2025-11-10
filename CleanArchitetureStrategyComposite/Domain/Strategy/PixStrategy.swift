//
//  PixStrategy.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

class PixStrategy: PaymentStrategy {
    func processPayment(price: Double) {
        print("Pagamento de \(price) via pix")
    }
}
