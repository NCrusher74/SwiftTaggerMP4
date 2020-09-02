/*
  Stsd.swift


  Created by Nolaine Crusher on 6/21/20.
*/

import Foundation
/// A class representing a `stsd` atom in an `Mp4File`'s atom structure
///
/** The sample description atom has an atom type of 'stsd'. The sample description atom contains a table of sample descriptions. A media may have one or more sample descriptions, depending upon the number of different encoding schemes used in the media and on the number of files used to store the data. The sample-to-chunk atom identifies the sample description for each sample in the media by specifying the index into this table for the appropriate description (see Sample-to-Chunk Atoms). */
class Stsd: Atom {
    
    private var version: Data
    private var flags: Data
    var entryCount: Int
    var sampleDescriptionTable: [(entrySize: Int, dataFormat: String, dataReferenceIndex: Int, additionalContent: Data)]?
    
    /// Initialize a `stsd` atom for parsing from the root structure
    override init(identifier: String, size: Int, payload: Data) throws  {
        var data = payload
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.entryCount = data.extractToInt(4)
        
        var entryArray = [(entrySize: Int, dataFormat: String, dataReferenceIndex: Int, additionalContent: Data)]()
        while !data.isEmpty {
            let size = data.extractToInt(4)
            let format = data.extractAtomID() ?? ""
            // reserved
            _ = data.extractFirst(6)
            let index = data.extractToInt(2)
            let additionalContentDataCount = size - 16
            var additionalContentData = Data()
            if additionalContentDataCount > 0 {
                additionalContentData = data.extractFirst(additionalContentDataCount)
            }
            let entry = (size, format, index, additionalContentData)
            entryArray.append(entry)
        }

        self.sampleDescriptionTable = entryArray
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// Initialize an `stsd` atom with default properties for building a chapter track
    init() throws {
        self.version = Atom.version
        self.flags = Atom.flags
        self.entryCount = 1
        let child = try Text()

        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(entryCount.int32.beData)
        payload.append(child.encode())
        let size = payload.count + 8
        try super.init(identifier: "stsd",
                       size: size,
                       children: [child])
    }
    
    override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(self.entryCount.int32.beData)
        
        let stbl = self.parent
        let minf = stbl?.parent
        let hdlr = minf?.siblings?.first(where: {$0.identifier == "hdlr"}) as? Hdlr
        
        if hdlr?.handlerSubtype == .text {
            do {
                let textAtom = try Text()
                let textSize = textAtom.size
                let textSizeEncoded = textSize.int32.beData
                data.append(textSizeEncoded)
                
                let textID = textAtom.identifier
                let textIDEncoded = textID.encodedISOLatin1
                data.append(textIDEncoded)
                
                data.append(textAtom.contentData)
            } catch {
                fatalError("Unable to create 'stsz' atom sample description table/text atom")
            }
        } else {
            for entry in self.sampleDescriptionTable ?? [] {
                data.append(entry.entrySize.int32.beData)
                data.append(entry.dataFormat.encodedISOLatin1)
                data.append(Atom.addReserveData(6))
                data.append(entry.dataReferenceIndex.int16.beData)
                data.append(entry.additionalContent)
            }
        }
        return data
    }
}
