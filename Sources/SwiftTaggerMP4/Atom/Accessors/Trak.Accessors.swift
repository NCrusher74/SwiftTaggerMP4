///*
// Trak.Accessors.swift
// SwiftTaggerMP4
// 
// Created by Nolaine Crusher on 8/4/20.
// */
//
//import Foundation
//extension Trak {
//    /// Gets and sets a `edts` atom
//    var edts: Edts? {
//        get {
//            if let edts = children.first(where: {$0.identifier == "edts"}) as? Edts {
//                return edts
//            } else {
//                return nil
//            }
//        }
//        set {
//            if let new = newValue {
//                var newChildren = self.children.filter({$0.identifier != "edts"})
//                newChildren.append(new)
//                self.children = newChildren
//            } else {
//                let newChildren = children.filter({$0.identifier != "edts"})
//                self.children = newChildren
//            }
//        }
//    }
//    
//    /// Gets and sets the `tref` atom on the sound `trak`
//    var tref: Tref? {
//        get {
//            let trackType = self.mdia.hdlr.handlerSubtype
//            if trackType == .soun {
//                return children.first(where: { $0.identifier == "tref"}) as? Tref
//            } else {
//                return nil
//            }
//        }
//        set {
//            let trackType = self.mdia.hdlr.handlerSubtype
//            if trackType == .soun {
//                if let new = newValue {
//                    var newChildren = children.filter({$0.identifier != "tref"})
//                    newChildren.append(new)
//                    self.children = newChildren
//                } else {
//                    let newChildren = children.filter({$0.identifier != "tref"})
//                    self.children = newChildren
//                }
//            }
//        }
//    }
//}
//
