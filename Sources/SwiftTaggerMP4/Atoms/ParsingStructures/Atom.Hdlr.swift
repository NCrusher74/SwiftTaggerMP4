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
        
    /// Initializes a `hdlr` atom for a chapter track.
    ///
    /// Specifically for building a chapter track. May not work in other contexts
    init(trackType: TrackType) throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.handlerTypeRaw = Data(repeating: 0x00, count: 4)
        
        let subHandler: TrackType = .text
        let subHandlerString = subHandler.rawValue
        self.handlerSubtypeRaw = subHandlerString.encodedISOLatin1
        let compName = "SubtitleHandler"
        self.componentName = compName.nullTerminatedISOLatin1
        
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
        let compName = "appl"
        self.componentName = compName.encodedISOLatin1
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(self.handlerTypeRaw)
        payload.append(self.handlerSubtypeRaw)
        payload.append(Atom.addReserveData(9))
        payload.append(self.componentName)
        let size = payload.count + 8
        
        try super.init(identifier: "hdlr",
                       size: size,
                       payload: payload)
    }
    /*
     This is how Audible handler atoms look
     hdlr (text):
     0 0 0 30
     68 64 6c 72
     0 // version
     0 0 0 // flags
     0 0 0 0 // component type
     74 65 78 74 // component subtype ("text")
     0 0 0 0 // component manufacturer
     0 0 0 0 // component flags
     0 0 0 0 // component flags mask
     53 75 62 74 69 74 6c 65 48 61 6e 64 6c 65 72 0 // "Subtitle handler" // component name
     count = 48

     hdlr (meta):
     0 0 0 21
     68 64 6c 72
     0 // version
     0 0 0 // flags
     0 0 0 0 // component type
     6d 64 69 72 // "mdir" // component subtype
     61 70 70 6c // "appl" // component manf
     0 0 0 0 // component flags
     0 0 0 0 // // component flags mask
     0 // component name
     count = 33
     */

   /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        var data = Data()
        if self.parent?.identifier == "meta" {
            data.append(self.version)
            data.append(self.flags)
            data.append(self.handlerTypeRaw) // component type
            data.append(handlerSubtypeRaw) // component subtype
            data.append(componentName) // component manf
            data.append(Data(repeating: 0x00, count: 9)) // flags, mask, name
        } else {
            data.append(self.version)
            data.append(self.flags)
            data.append(self.handlerTypeRaw) // component type
            data.append(self.handlerSubtypeRaw) // component subtype
            data.append(Atom.addReserveData(12)) // manf, flags, mask
            data.append(self.componentName) // null terminated string
        }
        return data
    }
}
