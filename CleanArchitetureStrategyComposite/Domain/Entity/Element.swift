//
//  Element.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol Element {
    var id: UUID { get }
    var name: String { get }
	var type: String { get }
    
    func execute() -> Void
    
}
