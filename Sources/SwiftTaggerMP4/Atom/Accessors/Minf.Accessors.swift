//
//  File.swift
//
//
//  Created by Nolaine Crusher on 8/4/20.
//

import Foundation
extension Minf {
    /// Gets and sets an `nmhd` atom
    var nmhd: Nmhd? {
        get {
            return children.first(where: { $0.identifier == "nmhd"}) as? Nmhd
        }
        set {
            if let newValue = newValue {
                var newChildren = children.filter({$0.identifier != "nmhd"})
                newChildren.append(newValue)
                self.children = newChildren
            } else {
                let newChildren = children.filter({$0.identifier != "nmhd"})
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets an `stbl` atom
    var stbl: Stbl? {
        get {
            return children.first(where: { $0.identifier == "stbl"}) as? Stbl
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "stbl"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets a `dinf` atom
    var dinf: Dinf? {
        get {
            return children.first(where: { $0.identifier == "dinf"}) as? Dinf
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "dinf"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
}

