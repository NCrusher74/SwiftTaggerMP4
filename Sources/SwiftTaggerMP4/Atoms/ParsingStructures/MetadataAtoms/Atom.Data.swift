/*
 DataAtom.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation
import Cocoa

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
            throw MetadataAtomError.UnsupportedMetadataFormat
        }
        self.locale = data.extractFirst(4)
        self.data = data
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        var data = Data()
        let typeInt = self.dataType.rawValue
        data.append(typeInt.int32.beData)
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
        
        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.int32.beData)
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
    }
    
    /// Initialize a `data` atom as a sub-atom for a metadata atom with string content
    init(stringValue: String) throws {
        self.dataType = .utf8
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = stringValue.encodedUtf8
        
        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.int32.beData)
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
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
            case "rtng", "cpil", "pcst", "stik", "pgap", "shwm":
                self.data = intValue.int8.beData
            case "tmpo", "\u{00A9}mvi", "\u{00A9}mvc":
                self.data = intValue.int16.beData
            case "plID":
                self.data = intValue.int64.beData
            default:
                self.data = intValue.int32.beData
        }
        
        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.int32.beData)
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
    }
    
    /// initialize a data atom for use with a metadata atom containing an unspecified content type
    init(data: Data) throws {
        self.dataType = .reserved
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = data
        
        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.int32.beData)
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
    }
}
