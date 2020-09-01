///*
// Nump.swift
// SwiftTaggerMP4
// 
// Created by Nolaine Crusher on 8/4/20.
// */
//
//import Foundation
//
///// A class representing a `nump` atom in an `Mp4File`'s atom structure
/////
///// **Not currently implemented**
//class Nump: Atom {
//
//    /// Packets sent
//    var packets: Int
//    
//    override init(identifier: String, size: Int, payload: Data) throws {
//        var data = payload
//        self.packets = data.extractTo64BitInt()
//        
//        try super.init(identifier: identifier,
//                   size: size,
//                   payload: payload)
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.packets.beDataFrom64BitInt)
//        return data
//    }
//}
