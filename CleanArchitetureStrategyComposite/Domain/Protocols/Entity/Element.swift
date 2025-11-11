//
//  Element.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol Element {
    var name: String { get }
	var type: String { get }
    
    func execute()
    
    func executeSearch(name: String) -> Element?
}
