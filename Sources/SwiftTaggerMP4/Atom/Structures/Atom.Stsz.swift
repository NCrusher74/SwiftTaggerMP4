///*
//  Stsz.swift
//
//
//  Created by Nolaine Crusher on 6/21/20.
//*/
//
//import Foundation
//
///// A class representing a `stsz` atom in an `Mp4File`'s atom structure
/////
///** You use sample size atoms to specify the size of each sample in the media. Sample size atoms have an atom type of 'stsz'.
// 
// The sample size atom contains the sample count and a table giving the size of each sample. This allows the media data itself to be unframed. The total number of samples in the media is always indicated in the sample count. If the default size is indicated, then no table follows.
// 
// *Note*: In chaptering terms, this describes the byte-count of the chapter title data */
//class Stsz: Atom {
//    
//    private var versionAndFlags: Data
//    var sampleSize: Int
//    var entryCount: Int
//    var sampleSizeTable: SampleSizeTable?
//    
//    /// Initialize a `stsz` atom for parsing from the root structure
//    override init(identifier: String, size: Int, payload: Data) throws  {
//        var data = payload
//        
//        self.versionAndFlags = data.extractFirst(4)
//        self.sampleSize = data.extractTo32BitInt()
//        self.entryCount = data.extractTo32BitInt()
//        
//        // if sampleSize if 0, it means the samples have different size values, and the table is used
//        // otherwise, the samples all have the same size, which is stored here
//        if sampleSize == 0 {
//            self.sampleSizeTable = SampleSizeTable(from: data)
//        } else {
//            self.sampleSizeTable = nil
//        }
//        try super.init(identifier: identifier,
//                       size: size,
//                       payload: payload)
//    }
//    
//    class SampleSizeTable {
//        var entries: [Int]
//        
//        init(from data: Data) {
//            var remainder = data
//            var entryArray: [Int] = []
//            while !remainder.isEmpty {
//                let entry = remainder.extractTo32BitInt()
//                entryArray.append(entry)
//            }
//            self.entries = entryArray
//        }
//        
//        /// Initialize a sample size table from a title size array
//        init(from array: [Int]) {
//            self.entries = array
//        }
//        
//        var totalSizes: Int {
//            var sizes = Int()
//            for entry in entries {
//                sizes += entry
//            }
//            return sizes
//        }
//        
//        var entryData: Data {
//            var data = Data()
//            for entry in self.entries {
//                data.append(entry.beDataFrom32BitInt)
//            }
//            return data
//        }
//    }
//    
//    /// Initialize an `stsz` atom with from chapter title data
//    init(titles: [String]) throws {
//        var sizes = [Int]()
//        for title in titles {
//            sizes.append(title.count + 2)
//        }
//        self.versionAndFlags = Atom.versionAndFlags
//        if sizes.allAreEqual() {
//            if let firstSize = sizes.first {
//                self.sampleSize = firstSize
//                self.sampleSizeTable = nil
//            } else {
//                self.sampleSize = 0
//            }
//        } else {
//            self.sampleSize = 0
//            self.sampleSizeTable = SampleSizeTable(from: sizes)
//        }
//        self.entryCount = sizes.count
//        
//        var payload = Data()
//        payload.append(versionAndFlags)
//        payload.append(sampleSize.beDataFrom32BitInt)
//        payload.append(entryCount.beDataFrom32BitInt)
//        payload.append(sampleSizeTable?.entryData ?? Data())
//        let size = payload.count + 8
//        
//        try super.init(identifier: "stsz",
//                       size: size,
//                       payload: payload)
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.versionAndFlags)
//        data.append(self.sampleSize.beDataFrom32BitInt)
//        data.append(self.entryCount.beDataFrom32BitInt)
//        data.append(self.sampleSizeTable?.entryData ?? Data())
//        return data
//    }
//}
