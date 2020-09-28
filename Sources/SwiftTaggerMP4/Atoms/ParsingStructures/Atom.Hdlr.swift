//
//  Hdlr.swift
//
//
//  Created by Nolaine Crusher on 7/1/20.
//

import Foundation

/// A class representing a `hdlr` atom in an `Mp4File`'s atom structure
class Hdlr: Atom {
    
    private var version: Data
    private var flags: Data
    // mhlr or dhlr if parent is mdia, or mdta if parent is meta, but will probably actually be 0
    private var handlerTypeRaw: Data
    // will be mdir if parent is meta
    private var handlerSubtypeRaw: Data
     // at least one 0
    var componentName: Data
    
    /// Initialize a `hdlr` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.handlerTypeRaw = data.extractFirst(4)
        self.handlerSubtypeRaw = data.extractFirst(4)
        // reserved
        _ = data.extractFirst(12)
        self.componentName = data
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    // we do this here instead of the initializer because we only need to do it if the parent is mdia
    var handlerSubtype: TrackType {
        var type: TrackType = .unknown
        if let typeString = handlerSubtypeRaw.stringISOLatin1 {
            if let trackType = TrackType(rawValue: typeString) {
                type = trackType
            }
        }
        guard type != .unknown else {
            fatalError("Unrecognized handler subtype")
        }
        return type
    }
    
    // when the parent is meta, the handler subtype becomes the handler type
    var handlerType: HandlerType? {
        var type: HandlerType = .unknown
        if let typeString = handlerSubtypeRaw.stringISOLatin1 {
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
        self.version = Atom.version
        self.flags = Atom.flags
        let handler = HandlerType.mhlr
        let handlerString = handler.rawValue
        self.handlerTypeRaw = handlerString.encodedISOLatin1
        
        let subHandler: TrackType = .text
        let subHandlerString = subHandler.rawValue
        self.handlerSubtypeRaw = subHandlerString.encodedISOLatin1
        self.componentName = 0.int8.beData
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(self.handlerTypeRaw)
        payload.append(self.handlerSubtypeRaw)
        payload.append(Atom.addReserveData(12))
        payload.append(self.componentName)
        let size = payload.count + 8
        
        try super.init(identifier: "hdlr",
                       size: size,
                       payload: payload)
    }
    
    /// Initializes a `hdlr` atom with a `meta` parent.
    ///
    /// Specifically for use in metadata lists. May not work in other contexts
    init() throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.handlerTypeRaw = Data(repeating: 0x00, count: 4)
        let subHandler = HandlerType.mdir
        let subHandlerString = subHandler.rawValue
        self.handlerSubtypeRaw = subHandlerString.encodedISOLatin1
        self.componentName = Data(repeating: 0x00, count: 2)
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(self.handlerTypeRaw)
        payload.append(self.handlerSubtypeRaw)
        payload.append(Atom.addReserveData(12))
        payload.append(self.componentName)
        let size = payload.count + 8
        
        try super.init(identifier: "hdlr",
                       size: size,
                       payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.handlerTypeRaw)
        data.append(self.handlerSubtypeRaw)
        data.append(Atom.addReserveData(12))
        data.append(self.componentName)
        return data
    }
}
