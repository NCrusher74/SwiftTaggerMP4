/*
 DataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `data` atom in an `Mp4File`'s atom structure
///
/// The `data` atom is always a sub-atom of a freeform or named metadata atom, found in the `moov.udta.meta.ilst` sub-atoms.
class DataAtom: Atom {

    /// The data type of a `data` atom, referred to in Apple documentation as "Well-Known Types" or in MP4v2 as `BasicType`
    var dataType: DataType
    private var locale: Data
    /// The payload content a the `data` atom.
    var data: Data
    
    /// Initialize a `data` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        
        // To determine the dataType, convert the first four bytes of the atom data to an integer an initialize the `DataType` enum with the integer as a rawValue.
        let typeInt = data.extractToInt(4)
        if let type = DataType(rawValue: typeInt) {
            self.dataType = type
        } else {
            throw MetadataAtomError.UnsupportedMetadataFormat("UnsupportedMetadataAtomError on atom with dataType rawValue: \(typeInt)")
        }
        self.locale = data.extractFirst(4)
        self.data = data
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = size - 8
        var data = Data()
        data.reserveCapacity(reserve)

        let typeInt = self.dataType.rawValue
        data.append(typeInt.uInt32.beData)
        data.append(locale)
        data.append(self.data)
        return data
    }
    
    /// Initialize a `data` atom from an image file stored locally as a sub-atom for a metadata atom with image content
    init(imageLocation: URL) throws {
        if imageLocation.pathExtension == "jpg" ||
            imageLocation.pathExtension == "jpeg" {
            self.dataType = .jpeg
        } else if imageLocation.pathExtension == "png" {
            self.dataType = .png
        } else {
            throw MetadataAtomError.UnsupportedImageFormat
        }
        
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = try Data(contentsOf: imageLocation)
        
        let size = data.count + 16
        
        try super.init(identifier: "data", size: size)
    }
    
    /// Initialize a `data` atom as a sub-atom for a metadata atom with string content
    init(stringValue: String) throws {
        self.dataType = .utf8
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = stringValue.encodedUtf8
        
        let size = 16 + data.count
        
        try super.init(identifier: "data",
                       size: size)
    }
    
    /// Initialize a `data` atom as a sub-atom for a metadata atom with integer content
    init(identifier: String, intValue: Int) throws {
        if intValue > UInt32.max {
            self.dataType = .signedInt64BE
        } else {
            self.dataType = .signedIntBE
        }
        
        self.locale = Data(repeating: 0x00, count: 4)
        switch identifier {
            case "rtng", "cpil", "pcst", "stik", "pgap", "shwm", "akID":
                self.data = intValue.uInt8.beData
            case "tmpo", "\u{00A9}mvi", "\u{00A9}mvc":
                self.data = intValue.uInt16.beData
            case "plID":
                self.data = intValue.uInt64.beData
            default:
                self.data = intValue.uInt32.beData
        }

        let size = data.count + 16
        
        try super.init(identifier: "data",
                       size: size)
    }
    
    /// initialize a data atom for use with a metadata atom containing an unspecified content type
    init(data: Data) throws {
        self.dataType = .reserved
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = data
        
        let size = data.count + 16
        
        try super.init(identifier: "data",
                       size: size)
    }
}
