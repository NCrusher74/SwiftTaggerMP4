///*
// Mean.swift
// SwiftTaggerMP4
// 
// Created by Nolaine Crusher on 8/4/20.
// */
//
//import Foundation
//
///// A class representing a `mean` atom in an `Mp4File`'s atom structure
//class Mean: Atom {
//    private var versionAndFlags: Data
//    var stringValue: String
//    /// Initialize a `mean` atom for parsing from the root structure
//    override init(identifier: String, size: Int, payload: Data) throws {
//        var data = payload
//        self.versionAndFlags = data.extractFirst(4)
//        let string = String(data: data, encoding: .utf8) ?? ""
//        self.stringValue = string
//        try super.init(identifier: identifier, size: size, payload: payload)
//    }
//    
//    /// Initialize a `mean` atom for creating an unknown metadata atom
//    init() throws {
//        self.versionAndFlags = Atom.versionAndFlags
//        self.stringValue = "com.apple.iTunes"
//        
//        var payload = Data()
//        payload.append(self.versionAndFlags)
//        payload.append(Data(self.stringValue.utf8))
//        
//        let size = payload.count + 8
//        try super.init(identifier: "mean",
//                       size: size,
//                       payload: payload)
//    }
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.versionAndFlags)
//        data.append(Data(self.stringValue.utf8))
//        return data
//    }
//}
//
