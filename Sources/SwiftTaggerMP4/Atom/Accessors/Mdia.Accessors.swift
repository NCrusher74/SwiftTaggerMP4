/*
  Mdia.Accessors.swift
  SwiftTaggerMP4
 
  Created by Nolaine Crusher on 8/4/20.
*/

import Foundation
extension Mdia {
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
                
                if let mdia = self.siblings?.first(where: {$0.identifier == "mdia"}) as? Mdia, mdia.hdlr.handlerSubtype == .soun {
                    mdhd.language = Mdhd.getLanguage(from: new)
                } else {
                    do {
                        mdhd = try Mdhd(elng: new)
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
}

