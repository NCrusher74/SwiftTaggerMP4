//
//  File.swift
//
//
//  Created by Nolaine Crusher on 8/4/20.
//

import Foundation
extension Mdia {
    /// Gets and sets a `minf` atom
    var minf: Minf? {
        get {
            return children.first(where: { $0.identifier == "minf"}) as? Minf
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "minf"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets an `elng` atom
    @available(OSX 10.12, *)
    var elng: Elng? {
        get {
            return children.first(where: { $0.identifier == "elng"}) as? Elng
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "elng"})
                newChildren.append(new)
                self.children = newChildren
                
                if let parent = self.parent as? Trak, parent.trackType == .soun {
                    mdhd?.language = Mdhd.getLanguage(from: new)
                } else if let duration = mdhd?.duration {
                    do {
                        mdhd = try Mdhd(mvhdDuration: duration, elng: new)
                    } catch {
                        fatalError("Unable to initialize 'mdhd' atom for using 'elng' locale")
                    }
                }
            } else {
                let newChildren = children.filter({$0.identifier != "elng"})
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets a `hdlr` atom
    var hdlr: Hdlr? {
        get {
            return children.first(where: { $0.identifier == "hdlr"}) as? Hdlr
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "hdlr"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
    
    /// Gets and sets the `mdhd` atom
    var mdhd: Mdhd? {
        get {
            return children.first(where: { $0.identifier == "mdhd"}) as? Mdhd
        }
        set {
            if let new = newValue {
                var newChildren = children.filter({$0.identifier != "mdhd"})
                newChildren.append(new)
                self.children = newChildren
            }
        }
    }
}

