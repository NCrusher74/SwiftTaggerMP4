//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/3/20.
//

import Foundation
extension Sequence where Element: AdditiveArithmetic {
    /// Adds the element of a sequence together to get the sum of all the elements
    func sum() -> Element { reduce(.zero, +) }
}
