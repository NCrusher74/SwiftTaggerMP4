//
//  File.swift
//
//
//  Created by Nolaine Crusher on 8/4/20.
//

import Foundation

// MARK: = Other
extension Dinf {
    /// Gets and sets a dref atom
    var dref: Dref? {
        get {
            return children.first(where: { $0.identifier == "dref"}) as? Dref
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "dref"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
}

extension Edts {
    /// Gets and sets an `elst` atom
    var elst: Elst? {
        get {
            return children.first(where: { $0.identifier == "elst" }) as? Elst
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "elst"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
}

