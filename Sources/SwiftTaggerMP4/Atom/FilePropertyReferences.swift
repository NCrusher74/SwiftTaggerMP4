//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation

class FilePropertyReference {
    var moov: Moov
    var data: Data
    
    init(moov: Moov, data: Data) throws {
        self.moov = moov
        self.data = data
        FilePropertyReference.timeScale = moov.mvhd.timeScale
        FilePropertyReference.duration = moov.mvhd.duration
        FilePropertyReference.elstDuration = moov.soundTrack.edts?.elst?.editListTable.duration
    }
}

extension FilePropertyReference {
    static var timeScale = Int()
    static var duration = Int()
    static var elstDuration: Int? = nil
    
}
