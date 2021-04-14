/*
 Text.swift
 
 
 Created by Nolaine Crusher on 7/5/20.
 */

import Foundation

/// A class representing a `text` atom in an `Mp4File`'s atom structure
class Text: Atom {
    
    var dataReferenceIndex: UInt16
    var displayFlags: UInt32
    var textJustification: UInt32
    var bgColorRed: UInt16
    var bgColorGreen: UInt16
    var bgColorBlue: UInt16
    var defineTextBoxTop: UInt16
    var defineTextBoxLeft: UInt16
    var defineTextBoxBottom: UInt16
    var defineTextBoxRight: UInt16
    var fontID: UInt16
    var fontFace: UInt16
    var fontColorRed: UInt16
    var fontColorGreen: UInt16
    var fontColorBlue: UInt16
    
    /// Initialize a `text` atom for parsing from the root structure
    /// *For chaptering purposes, this atom is the child atom of the `stsd` atom for a chapter track*
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        _ = data.extractFirst(6)
        self.dataReferenceIndex = data.extractFirst(2).uInt16BE
        self.displayFlags = data.extractFirst(4).uInt32BE
        self.textJustification = data.extractFirst(4).uInt32BE
        self.bgColorRed = data.extractFirst(2).uInt16BE
        self.bgColorGreen = data.extractFirst(2).uInt16BE
        self.bgColorBlue = data.extractFirst(2).uInt16BE
        self.defineTextBoxTop = data.extractFirst(2).uInt16BE
        self.defineTextBoxLeft = data.extractFirst(2).uInt16BE
        self.defineTextBoxBottom = data.extractFirst(2).uInt16BE
        self.defineTextBoxRight = data.extractFirst(2).uInt16BE
        _ = data.extractFirst(8)
        self.fontID = data.extractFirst(2).uInt16BE
        self.fontFace = data.extractFirst(2).uInt16BE
        _ = data.extractFirst(1)
        _ = data.extractFirst(2)
        self.fontColorRed = data.extractFirst(2).uInt16BE
        self.fontColorGreen = data.extractFirst(2).uInt16BE
        self.fontColorBlue = data.extractFirst(2).uInt16BE
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a text atom for use as the `stsd` atom's sample description table
    ///
    /// This is specifically for use in creating a chapter track. May not work in other contexts.
    init() throws {
        self.dataReferenceIndex = 0x0001
        self.displayFlags = 0x0000_0001
        self.textJustification = 0x0000_0001
        self.bgColorRed = 0x0000
        self.bgColorGreen = 0x0000
        self.bgColorBlue = 0x0000
        self.defineTextBoxTop = 0x0000
        self.defineTextBoxLeft = 0x0000
        self.defineTextBoxBottom = 0x0000
        self.defineTextBoxRight = 0x0000
        self.fontID = 0x0000
        self.fontFace = 0x0000
        self.fontColorRed = 0x0000
        self.fontColorGreen = 0x0000
        self.fontColorBlue = 0x0000
        
        let reserve = 51
        var payload = Data()
        payload.reserveCapacity(reserve)
        
        payload.append(Atom.addReserveData(6))
        payload.append(self.dataReferenceIndex.beData)
        payload.append(self.displayFlags.beData)
        payload.append(self.textJustification.beData)
        payload.append(self.bgColorRed.beData)
        payload.append(self.bgColorGreen.beData)
        payload.append(self.bgColorBlue.beData)
        payload.append(self.defineTextBoxTop.beData)
        payload.append(self.defineTextBoxLeft.beData)
        payload.append(self.defineTextBoxBottom.beData)
        payload.append(self.defineTextBoxRight.beData)
        payload.append(Atom.addReserveData(8))
        payload.append(self.fontID.beData)
        payload.append(self.fontFace.beData)
        payload.append(Atom.addReserveData(1))
        payload.append(Atom.addReserveData(2))
        payload.append(self.fontColorRed.beData)
        payload.append(self.fontColorGreen.beData)
        payload.append(self.fontColorBlue.beData)
        let size = reserve + 8
        
        try super.init(identifier: "text",
                       size: size,
                       payload: payload)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        var data = Data()
        data.reserveCapacity(size - 8)
        data.append(Atom.addReserveData(6))
        data.append(self.dataReferenceIndex.beData)
        data.append(self.displayFlags.beData)
        data.append(self.textJustification.beData)
        data.append(self.bgColorRed.beData)
        data.append(self.bgColorGreen.beData)
        data.append(self.bgColorBlue.beData)
        data.append(self.defineTextBoxTop.beData)
        data.append(self.defineTextBoxLeft.beData)
        data.append(self.defineTextBoxBottom.beData)
        data.append(self.defineTextBoxRight.beData)
        data.append(Atom.addReserveData(8))
        data.append(self.fontID.beData)
        data.append(self.fontFace.beData)
        data.append(Atom.addReserveData(1))
        data.append(Atom.addReserveData(2))
        data.append(self.fontColorRed.beData)
        data.append(self.fontColorGreen.beData)
        data.append(self.fontColorBlue.beData)
        return data
    }
}
