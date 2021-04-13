/*
  Tx3g.swift
  

  Created by Nolaine Crusher on 7/5/20.
*/

import Foundation

/// A class representing a `tx3g` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Tx3g: Atom {

    var dataReferenceIndex: UInt16
    var displayFlags: UInt32
    var horizontalJustification: UInt8
    var verticalJustification: UInt8
    var bgColorRed: UInt8
    var bgColorGreen: UInt8
    var bgColorBlue: UInt8
    var bgColorAlpha: UInt8
    var defineTextBoxTop: UInt16
    var defineTextBoxLeft: UInt16
    var defineTextBoxBottom: UInt16
    var defineTextBoxRight: UInt16
    var startCharacter: UInt16
    var endCharacter: UInt16
    var fontID: UInt16
    var fontFace: UInt8
    var fontSize: UInt8
    var fontColorRed: UInt8
    var fontColorGreen: UInt8
    var fontColorBlue: UInt8
    var fontColorAlpha: UInt8

    override init(identifier: String, size: Int, payload: Data) throws {
        
        var data = payload
        // reserved
        _ = data.extractFirst(4)
        // reserved
        _ = data.extractFirst(2)
        self.dataReferenceIndex = data.extractFirst(2).uInt16BE
        self.displayFlags = data.extractFirst(4).uInt32BE
        self.horizontalJustification = data.extractFirst(1).uInt8BE
        self.verticalJustification = data.extractFirst(1).uInt8BE
        self.bgColorRed = data.extractFirst(1).uInt8BE
        self.bgColorGreen = data.extractFirst(1).uInt8BE
        self.bgColorBlue = data.extractFirst(1).uInt8BE
        self.bgColorAlpha = data.extractFirst(1).uInt8BE
        self.defineTextBoxTop = data.extractFirst(2).uInt16BE
        self.defineTextBoxLeft = data.extractFirst(2).uInt16BE
        self.defineTextBoxBottom = data.extractFirst(2).uInt16BE
        self.defineTextBoxRight = data.extractFirst(2).uInt16BE
        self.startCharacter = data.extractFirst(2).uInt16BE
        self.endCharacter = data.extractFirst(2).uInt16BE
        self.fontID = data.extractFirst(2).uInt16BE
        self.fontFace = data.extractFirst(1).uInt8BE
        self.fontSize = data.extractFirst(1).uInt8BE
        self.fontColorRed = data.extractFirst(1).uInt8BE
        self.fontColorGreen = data.extractFirst(1).uInt8BE
        self.fontColorBlue = data.extractFirst(1).uInt8BE
        self.fontColorAlpha = data.extractFirst(1).uInt8BE

        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
            children.append(child)
            }
        }
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload,
                   children: children)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(Atom.addReserveData(4))
        data.append(Atom.addReserveData(2))
        data.append(self.dataReferenceIndex.beData)
        data.append(self.displayFlags.beData)
        data.append(self.horizontalJustification.beData)
        data.append(self.verticalJustification.beData)
        data.append(self.bgColorRed.beData)
        data.append(self.bgColorGreen.beData)
        data.append(self.bgColorBlue.beData)
        data.append(self.bgColorAlpha.beData)
        data.append(self.defineTextBoxTop.beData)
        data.append(self.defineTextBoxLeft.beData)
        data.append(self.defineTextBoxBottom.beData)
        data.append(self.defineTextBoxRight.beData)
        data.append(self.startCharacter.beData)
        data.append(self.endCharacter.beData)
        data.append(self.fontID.beData)
        data.append(self.fontFace.beData)
        data.append(self.fontSize.beData)
        data.append(self.fontColorRed.beData)
        data.append(self.fontColorGreen.beData)
        data.append(self.fontColorBlue.beData)
        data.append(self.fontColorAlpha.beData)
        return data
    }
}
