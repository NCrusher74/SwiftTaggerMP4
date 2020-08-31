//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation

struct FilePropertyReference {
    var duration: Int
    var timeScale: Int
    var mediaData: Data
    var extendedLanguage: ICULocaleCode
    
    init(rootAtoms: [Atom]) throws {
        if let moov = rootAtoms.first(where: {$0.identifier == "moov"}) {
            if let mvhd = moov.children.first(where: {$0.identifier == "mvhd"}) as? Mvhd {
                self.duration = mvhd.duration
                self.timeScale = mvhd.timeScale
            } else {
                throw Mp4File.Error.MvhdAtomNotFound
            }
        } else {
            throw Mp4File.Error.MoovAtomNotFound
        }
    }
}
