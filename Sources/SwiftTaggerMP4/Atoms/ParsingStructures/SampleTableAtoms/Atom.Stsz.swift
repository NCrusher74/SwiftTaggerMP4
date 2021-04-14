/*
 Stsz.swift
 
 
 Created by Nolaine Crusher on 6/21/20.
 */

import Foundation

/// A class representing a `stsz` atom in an `Mp4File`'s atom structure
///
/// You use sample size atoms to specify the size of each sample in the media. Sample size atoms have an atom type of 'stsz'.
/// The sample size atom contains the sample count and a table giving the size of each sample. This allows the media data itself to be unframed. The total number of samples in the media is always indicated in the sample count. If the default size is indicated, then no table follows.
/// In chaptering terms, this describes the byte-count of the chapter title data. Each chapter title "sample" is the length of the chapter title string as a 16-bit integer, followed by the encoded string itself. It may optionally be followed by a 12-byte `encd` atom.
class Stsz: Atom {
    
    private var version: Data
    private var flags: Data
    /// The size of the samples if they are all the same. Will be 0 if they're different
    var sampleSize: Int
    /// The number of samples described by the sample size or contained in the sampleSizeTable
    var entryCount: Int
    /// The array of sample sizes if they are not all the same
    var sampleSizeTable: [Int]
    
    /// Initialize a `stsz` atom for parsing from the root structure
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws  {
        var data = payload
        
        self.version = data.extractFirst(1)
        self.flags = data.extractFirst(3)
        self.sampleSize = data.extractToInt(4)
        self.entryCount = data.extractToInt(4)
        
        // If sampleSize if 0, it means the samples have different size values, and the table is used
        // Otherwise, the samples all have the same size, which is stored here
        if sampleSize == 0 {
            var entryArray = [Int]()
            while !data.isEmpty {
                entryArray.append(data.extractToInt(4))
            }
            self.sampleSizeTable = entryArray
        } else {
            self.sampleSizeTable = []
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       payload: payload)
    }
    
    /// **CHAPTER TRACK ONLY** Initialize an `stsz` atom with from chapter title data
    init(titles: [String]) throws {
        var sizes = [Int]()
        for title in titles {
            sizes.append(title.count + 2)
        }
        self.version = Atom.version
        self.flags = Atom.flags
        if sizes.allAreEqual() {
            if let firstSize = sizes.first {
                self.sampleSize = firstSize
                self.sampleSizeTable = []
            } else {
                self.sampleSize = 0
                self.sampleSizeTable = []
            }
        } else {
            self.sampleSize = 0
            self.sampleSizeTable = sizes
        }
        self.entryCount = sizes.count
        
        var payload = Data()
        payload.append(self.version)
        payload.append(self.flags)
        payload.append(sampleSize.uInt32.beData)
        payload.append(entryCount.uInt32.beData)
        for size in sizes {
            payload.append(size.uInt32.beData)
        }

        let size = payload.count + 8
        
        try super.init(identifier: "stsz",
                       size: size,
                       payload: payload)
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
   override var contentData: Data {
        var data = Data()
        data.append(self.version)
        data.append(self.flags)
        data.append(sampleSize.uInt32.beData)
        data.append(entryCount.uInt32.beData)
        for entry in sampleSizeTable {
            data.append(entry.uInt32.beData)
        }
        return data
    }
}
