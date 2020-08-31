//
//  File.swift
//
//
//  Created by Nolaine Crusher on 8/4/20.
//

import Foundation
extension Stbl {
    /// Gets and sets an `stsc` atom
    var stsc: Stsc? {
        get {
            return children.first(where: { $0.identifier == "stsc"}) as? Stsc
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "stsc"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets an `stsd` atom
    var stsd: Stsd? {
        get {
            return children.first(where: { $0.identifier == "stsd"}) as? Stsd
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "stsd"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets an `stts` atom
    var stts: Stts? {
        get {
            return children.first(where: { $0.identifier == "stts"}) as? Stts
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "stts"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets an `stco` atom
    var stco: Stco? {
        get {
            return children.first(where: { $0.identifier == "stco"}) as? Stco
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "stco"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets an `co64` atom
    var co64: Co64? {
        get {
            return children.first(where: { $0.identifier == "co64"}) as? Co64
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "co64"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets an `stsz` atom
    var stsz: Stsz? {
        get {
            return children.first(where: { $0.identifier == "stsz"}) as? Stsz
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "stsz"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
}

