//
//  Element.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol Element: AnyObject {
    var id: UUID { get set}
    var name: String { get set }
	var type: String { get set }
    var children: [any Element] { get set }
    
    func addChildren(_ element: Element) -> Void
}

extension Element {
    func addChildren(_ element: Element) {
        children.append(element)
    }
}
