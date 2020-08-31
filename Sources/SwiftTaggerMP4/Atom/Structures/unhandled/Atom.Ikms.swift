//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/4/20.
//

import Foundation

/// A class representing a `ikms` atom in an `Mp4File`'s atom structure
///
/// Not currently implemented
class Ikms: Atom {
    
    private var versionAndFlags: Data // 4
    var kms_Uri: String

    override init(identifier: String, size: Int, payload: Data) throws {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.kms_Uri = data.toStringUtf8 ?? ""
        
        
        try super.init(identifier: identifier,
                   size: size,
                   payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(Data(self.kms_Uri.utf8))
        return data
    }
}
