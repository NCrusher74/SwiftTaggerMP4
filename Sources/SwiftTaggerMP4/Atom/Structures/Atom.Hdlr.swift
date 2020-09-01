//
//  Hdlr.swift
//
//
//  Created by Nolaine Crusher on 7/1/20.
//

import Foundation

/// A class representing a `hdlr` atom in an `Mp4File`'s atom structure
class Hdlr: Atom {
    
    private var versionAndFlags: Data
    // mhlr or dhlr if parent is mdia, or mdta if parent is meta, but will probably actually be 0
    private var handlerTypeRaw: Data
    // will be mdir if parent is meta
    private var handlerSubtypeRaw: Data
     // 12 bytes set to 0
    private var reserved: Data
     // at least one 0
    var componentName: Data
    
    /// Initialize a `hdlr` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.handlerTypeRaw = data.extractFirst(4)
        self.handlerSubtypeRaw = data.extractFirst(4)
        self.reserved = data.extractFirst(12)
        self.componentName = data
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    // we do this here instead of the initializer because we only need to do it if the parent is mdia
    var handlerSubtype: TrackType {
        var type: TrackType = .unknown
        if let typeString = String(data: handlerSubtypeRaw, encoding: .isoLatin1) {
            if let trackType = TrackType(rawValue: typeString) {
                type = trackType
            }
        }
        guard type != .unknown else {
            fatalError("Unrecognized handler subtype")
        }
        return type
    }
    
    var handlerType: HandlerType? {
        var type: HandlerType = .unknown
        if let typeString = String(data: handlerSubtypeRaw, encoding: .isoLatin1) {
            if let handlerType = HandlerType(rawValue: typeString) {
                type = handlerType
            }
        }
        guard type != .unknown else {
            fatalError("Unrecognized handler type")
        }
        return type
    }
    
    /// Initializes a `hdlr` atom for a chapter track.
    ///
    /// Specifically for building a chapter track. May not work in other contexts
    init(trackType: TrackType) throws {
        self.versionAndFlags = Atom.versionAndFlags
        
        let handler: HandlerType = .mhlr
        let handlerString = handler.rawValue
        self.handlerTypeRaw = handlerString.data(using: .isoLatin1)!
        
        let subHandler: TrackType = .text
        let subHandlerString = subHandler.rawValue
        self.handlerSubtypeRaw = subHandlerString.data(using: .isoLatin1)!
        self.reserved = Data(repeating: 0x00, count: 12)
        self.componentName = 0.beDataFrom8BitInt
        
        var payload = Data()
        payload.append(versionAndFlags)
        payload.append(handlerTypeRaw)
        payload.append(handlerSubtypeRaw)
        payload.append(reserved)
        payload.append(componentName)
        let size = payload.count + 8
        
        try super.init(identifier: "hdlr",
                       size: size,
                       payload: payload)
    }
    
    /// Initializes a `hdlr` atom with a `meta` parent.
    ///
    /// Specifically for use in metadata lists. May not work in other contexts
    init() throws {
        self.versionAndFlags = Atom.versionAndFlags
        self.handlerTypeRaw = Data(repeating: 0x00, count: 4)
        
        let subHandler: HandlerType = .mdir
        let subHandlerString = subHandler.rawValue
        self.handlerSubtypeRaw = subHandlerString.data(using: .isoLatin1)!
        self.reserved = Data(repeating: 0x00, count: 12)
        self.componentName = Data(repeating: 0x00, count: 2)
        
        var payload = Data()
        payload.append(versionAndFlags)
        payload.append(handlerTypeRaw)
        payload.append(handlerSubtypeRaw)
        payload.append(reserved)
        payload.append(componentName)
        let size = payload.count + 8
        
        try super.init(identifier: "hdlr",
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.handlerTypeRaw)
        data.append(self.handlerSubtypeRaw)
        data.append(self.reserved)
        data.append(self.componentName)
        return data
    }
}
