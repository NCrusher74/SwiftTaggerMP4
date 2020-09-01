///*
//  Stsd.swift
//
//
//  Created by Nolaine Crusher on 6/21/20.
//*/
//
//import Foundation
///// A class representing a `stsd` atom in an `Mp4File`'s atom structure
/////
///** The sample description atom has an atom type of 'stsd'. The sample description atom contains a table of sample descriptions. A media may have one or more sample descriptions, depending upon the number of different encoding schemes used in the media and on the number of files used to store the data. The sample-to-chunk atom identifies the sample description for each sample in the media by specifying the index into this table for the appropriate description (see Sample-to-Chunk Atoms). */
//class Stsd: Atom {
//    
//    private var version: Data
//    private var flags: Data
//    var entryCount: Int
//    var sampleDescriptionTable: SampleDescriptionTable?
//    
//    /// Initialize a `stsd` atom for parsing from the root structure
//    override init(identifier: String, size: Int, payload: Data) throws  {
//        var data = payload
//        self.version = data.extractFirst(1)
//        self.flags = data.extractFirst(3)
//        self.entryCount = data.extractTo32BitInt()
//        self.sampleDescriptionTable = SampleDescriptionTable(from: data)
//        try super.init(identifier: identifier,
//                       size: size,
//                       payload: payload)
//    }
//    
//    struct SampleDescriptionTable {
//        var entries: [(entrySize: Int, dataFormat: String, reservedData: Data, dataReferenceIndex: Int, additionalContent: Data)]
//        
//        init(from data: Data) {
//            var remainder = data
//            var entryArray: [(entrySize: Int, dataFormat: String, reservedData: Data, dataReferenceIndex: Int, additionalContent: Data)] = []
//            while !remainder.isEmpty {
//                let size = remainder.extractTo32BitInt()
//                
//                let format = remainder.extractAtomID() ?? ""
//                let reserved = remainder.extractFirst(6)
//                
//                let index = remainder.extractTo16BitInt()
//                
//                let additionalContentDataCount = size - 16
//                var additionalContentData = Data()
//                if additionalContentDataCount > 0 {
//                    additionalContentData = remainder.extractFirst(additionalContentDataCount)
//                }
//                let entry = (size, format, reserved, index, additionalContentData)
//                entryArray.append(entry)
//            }
//            self.entries = entryArray
//        }
//        
//        var entryData: Data {
//            var data = Data()
//            for entry in self.entries {
//                data.append(entry.entrySize.beDataFrom32BitInt)
//                data.append(Data(entry.dataFormat.utf8))
//                data.append(entry.reservedData)
//                data.append(entry.dataReferenceIndex.beDataFrom16BitInt)
//                data.append(entry.additionalContent)
//            }
//            return data
//        }
//    }
//    
//    /// Initialize an `stsd` atom with default properties for building a chapter track
//    init() throws {
//        self.versionAndFlags = Atom.versionAndFlags
//        self.entryCount = 1
//        let child = try Text()
//        var payload = Data()
//        payload.append(self.versionAndFlags)
//        payload.append(entryCount.beDataFrom32BitInt)
//        payload.append(child.encode())
//        let size = payload.count + 8
//        try super.init(identifier: "stsd", size: size, children: [child])
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.version)
//        data.append(self.flags)
//        data.append(self.entryCount.beDataFrom32BitInt)
//        
//        let stbl = self.parent
//        let minf = stbl?.parent
//        let hdlr = minf?.siblings?.first(where: {$0.identifier == "hdlr"}) as? Hdlr
//        
//        if hdlr?.handlerSubtype == .text {
//            do {
//                let textAtom = try Text()
//                let textSize = textAtom.size
//                let textSizeEncoded = textSize.beDataFrom32BitInt
//                data.append(textSizeEncoded)
//                
//                let textID = textAtom.identifier
//                let textIDEncoded = textID.encodedISOLatin1
//                data.append(textIDEncoded)
//                
//                data.append(textAtom.contentData)
//            } catch {
//                fatalError("Unable to create 'stsz' atom sample description table/text atom")
//            }
//        } else {
//            data.append(self.sampleDescriptionTable?.entryData ?? Data())
//        }
//        return data
//    }
//}
