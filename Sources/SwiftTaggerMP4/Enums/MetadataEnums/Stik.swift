/*
  MediaType.swift
  SwiftTaggerMP4

  Created by Nolaine Crusher on 5/2/20.
  Copyright © 2020 Nolaine Crusher. All rights reserved.
*/

import Foundation

enum Stik: Int, CaseIterable {
    init?(stringValue: String) {
        self = Stik.stringMapping[stringValue] ?? .undefined
    }

    static let stringMapping: [String: Stik] = {
        var mapping: [String: Stik] = [:]
        for type in Stik.allCases {
            let string = type.stringValue
            mapping[string] = type
        }
        return mapping
    }()

    case movieOld = 0
    case music = 1
    case audiobook = 2
    case whackedBookmark = 5
    case musicVideo = 6
    case movie = 9
    case tvShow = 10
    case booklet = 11
    case ringtone = 14
    case podcast = 21
    case iTunesU = 23
    case undefined = 255
    
    var stringValue: String {
        switch self {
            case .movieOld: return "Movie (Old)"
            case .music: return "Music"
            case .audiobook: return "Audiobook"
            case .whackedBookmark: return "Whacked Bookmark"
            case .musicVideo: return "Music Video"
            case .movie: return "Movie"
            case .tvShow: return "TV Show"
            case .booklet: return "Booklet"
            case .ringtone: return "Ringtone"
            case .podcast: return "Podcast"
            case .iTunesU: return "iTunes U"
            case .undefined: return ""
        }
    }
}
