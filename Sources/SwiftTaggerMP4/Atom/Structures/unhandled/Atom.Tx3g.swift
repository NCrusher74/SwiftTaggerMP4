///*
//  Tx3g.swift
//  
//
//  Created by Nolaine Crusher on 7/5/20.
//*/
//
//import Foundation
//
///// A class representing a `tx3g` atom in an `Mp4File`'s atom structure
/////
///// **Not currently implemented**
//class Tx3g: Atom {
//
//    private var reserved1: Data
//    private var reserved2: Data
//    var dataReferenceIndex: Int
//    var displayFlags: UInt32
//    var horizontalJustification: UInt8
//    var verticalJustification: UInt8
//    var bgColorRed: UInt8
//    var bgColorGreen: UInt8
//    var bgColorBlue: UInt8
//    var bgColorAlpha: UInt8
//    var defineTextBoxTop: UInt16
//    var defineTextBoxLeft: UInt16
//    var defineTextBoxBottom: UInt16
//    var defineTextBoxRight: UInt16
//    var startCharacter: UInt16
//    var endCharacter: UInt16
//    var fontID: UInt16
//    var fontFace: UInt8
//    var fontSize: UInt8
//    var fontColorRed: UInt8
//    var fontColorGreen: UInt8
//    var fontColorBlue: UInt8
//    var fontColorAlpha: UInt8
//
//    override init(identifier: String, size: Int, payload: Data) throws {
//        
//        var data = payload
//        self.reserved1 = data.extractFirst(4)
//        self.reserved2 = data.extractFirst(2)
//        self.dataReferenceIndex = data.extractTo16BitInt()
//        self.displayFlags = data.extractToUInt32BE()
//        self.horizontalJustification = data.extractFirst(1).toUInt8
//        self.verticalJustification = data.extractFirst(1).toUInt8
//        self.bgColorRed = data.extractFirst(1).toUInt8
//        self.bgColorGreen = data.extractFirst(1).toUInt8
//        self.bgColorBlue = data.extractFirst(1).toUInt8
//        self.bgColorAlpha = data.extractFirst(1).toUInt8
//        self.defineTextBoxTop = data.extractToUInt16BE()
//        self.defineTextBoxLeft = data.extractToUInt16BE()
//        self.defineTextBoxBottom = data.extractToUInt16BE()
//        self.defineTextBoxRight = data.extractToUInt16BE()
//        self.startCharacter = data.extractToUInt16BE()
//        self.endCharacter = data.extractToUInt16BE()
//        self.fontID = data.extractToUInt16BE()
//        self.fontFace = data.extractFirst(1).toUInt8
//        self.fontSize = data.extractFirst(1).toUInt8
//        self.fontColorRed = data.extractFirst(1).toUInt8
//        self.fontColorGreen = data.extractFirst(1).toUInt8
//        self.fontColorBlue = data.extractFirst(1).toUInt8
//        self.fontColorAlpha = data.extractFirst(1).toUInt8
//
//        var children = [Atom]()
//        while !data.isEmpty {
//            if let child = try data.extractAndParseToAtom() {
//            children.append(child)
//            }
//        }
//        try super.init(identifier: identifier,
//                   size: size,
//                   payload: payload,
//                   children: children)
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.reserved1)
//        data.append(self.reserved2)
//        data.append(self.dataReferenceIndex.beDataFrom16BitInt)
//        data.append(self.displayFlags.beData)
//        data.append(Data([self.horizontalJustification]))
//        data.append(Data([self.verticalJustification]))
//        data.append(Data([self.bgColorRed]))
//        data.append(Data([self.bgColorGreen]))
//        data.append(Data([self.bgColorBlue]))
//        data.append(Data([self.bgColorAlpha]))
//        data.append(self.defineTextBoxTop.beData)
//        data.append(self.defineTextBoxLeft.beData)
//        data.append(self.defineTextBoxBottom.beData)
//        data.append(self.defineTextBoxRight.beData)
//        data.append(self.startCharacter.beData)
//        data.append(self.endCharacter.beData)
//        data.append(self.fontID.beData)
//        data.append(Data([self.fontFace]))
//        data.append(Data([self.fontSize]))
//        data.append(Data([self.fontColorRed]))
//        data.append(Data([self.fontColorGreen]))
//        data.append(Data([self.fontColorBlue]))
//        data.append(Data([self.fontColorAlpha]))
//        return data
//    }
//}
