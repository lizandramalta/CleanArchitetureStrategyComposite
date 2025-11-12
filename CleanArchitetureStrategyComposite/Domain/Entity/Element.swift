//
//  Element.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol Element: AnyObject {
    func addElement(_ element: Element) -> Void
}
