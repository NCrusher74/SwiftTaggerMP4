/*
  Text.swift


  Created by Nolaine Crusher on 7/5/20.
*/

import Foundation

/// A class representing a `text` atom in an `Mp4File`'s atom structure
class Text: Atom {
    
    private var reserved1: Data
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
    private var reserved2: Data
    var fontID: UInt16
    var fontFace: UInt16
    private var reserved3: Data
    private var reserved4: Data
    var fontColorRed: UInt16
    var fontColorGreen: UInt16
    var fontColorBlue: UInt16
    
    /// Initialize a `text` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.reserved1 = data.extractFirst(6)
        self.dataReferenceIndex = data.extractToUInt16BE()
        self.displayFlags = data.extractToUInt32BE()
        self.textJustification = data.extractToUInt32BE()
        self.bgColorRed = data.extractToUInt16BE()
        self.bgColorGreen = data.extractToUInt16BE()
        self.bgColorBlue = data.extractToUInt16BE()
        self.defineTextBoxTop = data.extractToUInt16BE()
        self.defineTextBoxLeft = data.extractToUInt16BE()
        self.defineTextBoxBottom = data.extractToUInt16BE()
        self.defineTextBoxRight = data.extractToUInt16BE()
        self.reserved2 = data.extractFirst(8)
        self.fontID = data.extractToUInt16BE()
        self.fontFace = data.extractToUInt16BE()
        self.reserved3 = data.extractFirst(1)
        self.reserved4 = data.extractFirst(2)
        self.fontColorRed = data.extractToUInt16BE()
        self.fontColorGreen = data.extractToUInt16BE()
        self.fontColorBlue = data.extractToUInt16BE()
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a text atom for use as the `stsd` atom's sample description table
    ///
    /// This is specifically for use in creating a chapter track. May not work in other contexts.
    init() throws {
        self.reserved1 = Data(repeating: 0x00, count: 6)
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
        self.reserved2 = Data(repeating: 0x00, count: 8)
        self.fontID = 0x0000
        self.fontFace = 0x0000
        self.reserved3 = Data(repeating: 0x00, count: 1)
        self.reserved4 = Data(repeating: 0x00, count: 2)
        self.fontColorRed = 0x0000
        self.fontColorGreen = 0x0000
        self.fontColorBlue = 0x0000
        
        var payload = Data()
        payload.append(self.reserved1)
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
        payload.append(self.reserved2)
        payload.append(self.fontID.beData)
        payload.append(self.fontFace.beData)
        payload.append(self.reserved3)
        payload.append(self.reserved4)
        payload.append(self.fontColorRed.beData)
        payload.append(self.fontColorGreen.beData)
        payload.append(self.fontColorBlue.beData)
        let size = payload.count + 8
        
        try super.init(identifier: "text", size: size, payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.reserved1)
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
        data.append(self.reserved2)
        data.append(self.fontID.beData)
        data.append(self.fontFace.beData)
        data.append(self.reserved3)
        data.append(self.reserved4)
        data.append(self.fontColorRed.beData)
        data.append(self.fontColorGreen.beData)
        data.append(self.fontColorBlue.beData)
        return data
    }
}
