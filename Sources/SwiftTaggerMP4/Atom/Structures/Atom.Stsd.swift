//
//  File.swift
//
//
//  Created by Nolaine Crusher on 6/21/20.
//

import Foundation
/// A class representing a `stsd` atom in an `Mp4File`'s atom structure
///
/** The sample description atom has an atom type of 'stsd'. The sample description atom contains a table of sample descriptions. A media may have one or more sample descriptions, depending upon the number of different encoding schemes used in the media and on the number of files used to store the data. The sample-to-chunk atom identifies the sample description for each sample in the media by specifying the index into this table for the appropriate description (see Sample-to-Chunk Atoms). */
class Stsd: Atom {
    
    private var versionAndFlags: Data // 4 bytes
    var entryCount: Int // 4
    var sampleDescriptionTable: SampleDescriptionTable?
    
    /// Initialize a `stsd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws  {
        var data = payload
        self.versionAndFlags = data.extractFirst(4)
        self.entryCount = data.extractFirstToInt(32)
        self.sampleDescriptionTable = SampleDescriptionTable(from: data)
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    struct SampleDescriptionTable {
        var entries: [(entrySize: Int, dataFormat: String, reservedData: Data, dataReferenceIndex: Int, additionalContent: Data)]
        
        init(from data: Data) {
            var remainder = data
            var entryArray: [(entrySize: Int, dataFormat: String, reservedData: Data, dataReferenceIndex: Int, additionalContent: Data)] = []
            while !remainder.isEmpty {
                let size = remainder.extractFirstToInt(32)
                
                let format = remainder.extractAtomID() ?? ""
                let reserved = remainder.extractFirst(6)
                
                let index = remainder.extractFirstToInt(2)
                
                let additionalContentDataCount = size - 16
                var additionalContentData = Data()
                if additionalContentDataCount > 0 {
                    additionalContentData = remainder.extractFirst(additionalContentDataCount)
                }
                let entry = (size, format, reserved, index, additionalContentData)
                entryArray.append(entry)
            }
            self.entries = entryArray
        }
        
        var entryData: Data {
            var data = Data()
            for entry in self.entries {
                data.append(entry.entrySize.beData(32))
                data.append(Data(entry.dataFormat.utf8))
                data.append(entry.reservedData)
                data.append(entry.dataReferenceIndex.beData(16))
                data.append(entry.additionalContent)
            }
            return data
        }
    }
    
    /// Initialize an `stsd` atom with default properties for building a chapter track
    init() throws {
        self.versionAndFlags = Data(repeating: 0x00, count: 4)
        self.entryCount = 1
        let child = try Text()
        var payload = Data()
        payload.append(self.versionAndFlags)
        payload.append(entryCount.beData(32))
        payload.append(child.encode())
        let size = payload.count + 8
        try super.init(identifier: "stsd", size: size, children: [child])
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.versionAndFlags)
        data.append(self.entryCount.beData(32))
        
        let stbl = self.parent
        let minf = stbl?.parent
        let mdia = minf?.parent
        let trak = mdia?.parent as? Trak
        
        if trak?.trackType == .text {
            do {
                let textAtom = try Text()
                let textSize = textAtom.size
                let textSizeEncoded = textSize.beData(32)
                data.append(textSizeEncoded)
                
                let textID = textAtom.identifier
                let textIDEncoded = textID.encodedISOLatin1
                data.append(textIDEncoded)
                
                data.append(textAtom.contentData)
            } catch {
                fatalError("Unable to create 'stsz' atom sample description table/text atom")
            }
        } else {
            data.append(self.sampleDescriptionTable?.entryData ?? Data())
        }
        return data
    }
}
