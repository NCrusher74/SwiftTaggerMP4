/*
 Ohdr.swift
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 8/4/20.
 */

import Foundation

/// A class representing a `odkm` atom in an `Mp4File`'s atom structure
///
/// **Not currently implemented**
class Ohdr: Atom {
    var version: Data
    var flags: Data
    var encryptionMethod: Int8
    var encryptionPadding: Int8
    var plainTextLength: Int64
    var contentIDLength: Int
    var rightsIssuerUrlLength: Int
    var textualHeadersLength: Int
    var contentID: String?
    var rightsIssuerUrl: String?
    var textualHeaders: Data
    
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.encryptionMethod = data.extractFirst(1).int8BE
        self.encryptionPadding = data.extractFirst(1).int8BE
        self.plainTextLength = data.extractFirst(8).int64BE
        self.contentIDLength = data.extractToInt(2)
        self.rightsIssuerUrlLength = data.extractToInt(2)
        self.textualHeadersLength = data.extractToInt(2)
        self.contentID = data.extractFirst(contentIDLength).stringASCII
        self.rightsIssuerUrl = data.extractFirst(rightsIssuerUrlLength).stringASCII
        self.textualHeaders = data.extractFirst(textualHeadersLength)
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.encryptionMethod.beData)
        data.append(self.encryptionPadding.beData)
        data.append(self.plainTextLength.beData)
        data.append(self.contentIDLength.int16.beData)
        data.append(self.rightsIssuerUrlLength.int16.beData)
        data.append(self.textualHeadersLength.int16.beData)
        if let contentID = self.contentID {
            data.append(contentID.encodedASCII)
        }
        if let rightsIssuerUrl = self.rightsIssuerUrl {
            data.append(rightsIssuerUrl.encodedASCII)
        }
        data.append(self.textualHeaders)
        return data
    }
}
