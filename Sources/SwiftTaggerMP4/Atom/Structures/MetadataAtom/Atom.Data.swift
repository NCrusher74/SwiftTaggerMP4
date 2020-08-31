//
//  File.swift
//
//
//  Created by Nolaine Crusher on 7/31/20.
//

import Foundation
import Cocoa

/// A class representing a `data` atom in an `Mp4File`'s atom structure
class DataAtom: Atom {
    var dataType: DataType
    private var locale: Data
    var data: Data
    
    /// Initialize a `data` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        let typeInt = data.extractFirstToInt(4)
        if let type = DataType(rawValue: typeInt) {
            self.dataType = type
        } else {
            fatalError("\(Mp4File.Error.UnsupportedMetadataFormat)")
        }
        self.locale = data.extractFirst(4)
        self.data = data
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
        
    override var contentData: Data {
        var data = Data()
        let typeInt = self.dataType.rawValue
        data.append(typeInt.beData(32))
        data.append(locale)
        data.append(self.data)
        return data
    }
    
    init(imageLocation: URL) throws {
        if imageLocation.pathExtension == "jpg" || imageLocation.pathExtension == "jpeg" {
            self.dataType = .jpeg
        } else if imageLocation.pathExtension == "png" {
            self.dataType = .png
        } else {
            throw Mp4File.Error.UnsupportedImageFormat
        }
        
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = try Data(contentsOf: imageLocation)
        
        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.beData(32))
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
    }
    
    init(stringValue: String) throws {
        self.dataType = .utf8
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = stringValue.encodedUtf8

        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.beData(32))
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
    }
    
    init(identifier: String, intValue: Int) throws {
        if intValue > UInt32.max {
            self.dataType = .signedInt64BE
        } else {
            self.dataType = .signedIntBE
        }
        
        self.locale = Data(repeating: 0x00, count: 4)
        switch identifier {
            case "rtng", "cpil", "pcst", "stik", "pgap", "shwm":
                self.data = intValue.beData(8)
            case "tmpo", "\u{00A9}mvi", "\u{00A9}mvc":
                self.data = intValue.beData(16)
            case "plID":
                self.data = intValue.beData(64)
            default:
                self.data = intValue.beData(32)
        }
        
        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.beData(32))
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
    }
    
    init(data: Data) throws {
        self.dataType = .reserved
        self.locale = Data(repeating: 0x00, count: 4)
        self.data = data
        
        var payload = Data()
        let typeInt = self.dataType.rawValue
        payload.append(typeInt.beData(32))
        payload.append(self.locale)
        payload.append(self.data)
        let size = payload.count + 8
        
        try super.init(identifier: "data",
                       size: size,
                       payload: payload)
    }
}
