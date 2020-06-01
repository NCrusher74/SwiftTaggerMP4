//
//  AtomIdentifier.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import AVFoundation

enum Metadata: CaseIterable {
    
    case acknowledgment
    case album
    case albumArtist
    
    var identifier: AVMetadataIdentifier {
        switch self {
            case .acknowledgment : return .iTunesMetadataAcknowledgement
            case .album : return .iTunesMetadataAlbum
            case .albumArtist: return .iTunesMetadataAlbumArtist
        }
    }
    
    var key: AVMetadataKey {
        switch self {
            case .acknowledgment : return .iTunesMetadataKeyAcknowledgement
            case .album : return .iTunesMetadataKeyAlbum
            case .albumArtist: return .iTunesMetadataKeyAlbumArtist
        }
    }
    
    var metadataFormat: AVMetadataFormat {
        switch self {
            case .acknowledgment,
                 .album,
                 .albumArtist: return AVMetadataFormat.iTunesMetadata
        }
    }
    
    var keySpace: AVMetadataKeySpace {
        switch self {
            case .acknowledgment,
                 .album,
                 .albumArtist: return AVMetadataKeySpace.iTunes
        }
    }
    
    enum inputFormat: Int {
        case string = 0
        case integer = 1
        case data = 2
        case date = 3
        case intArray = 4
        case stringArray = 5
    }
    
    var format: inputFormat {
        switch self {
            case .acknowledgment,
                 .album,
                 .albumArtist: return inputFormat.string
        }
    }
}

//enum MetadataIdentifier: String, CaseIterable {
//
//    case acknowledgment = "©cak"
//    case album = "©alb"
//    case albumSort = "soal"
//    case albumArtist = "aART"
//    case albumArtistSort = "soaa"
//    case arranger = "©arg"
//    case artDirector = "©ard"
//    case artist = "©ART"
//    case artistSort = "soar"
//    case artistWebpage = "[URL_OFFICIAL_ARTIST_SITE]"
//    case audioFileWebpage = "[OFFICIAL_AUDIO_FILE_URL]"
//    case audioSourceWebpage = "[OFFICIAL_AUDIO_SOURCE_URL]"
//    case bpm = "tmpo"
//    case comments = "©cmt"
//    case compilation = "cpil"
//    case composer = "©wrt"
//    case composerSort = "soco"
//    case conductor = "©con"
//    case contentAdvisory = "[iTunEXTC]"
//    case contentRating = "rtng"
//    case copyright = "cprt"
//    case copyrightWebpage = "[COPYRIGHT URL]"
//    case description = "desc"
//    case director = "©dir"
//    case discNumber = "disk"
//    case encodedBy = "©enc"
//    case encodingTool = "©too"
//    case encodingSettings = "[ENCODING]"
//    case encodingTime = "[ENCODINGTIME]"
//    case executiveProducer = "©xpd"
//    case fileType = "©fmt"
//    case genre = "©gen"
//    case genreID = "gnre"
//    case grouping = "©grp"
//    case isrc = "©isr"
//    case initialKey = "[KEY]"
//    case language = "[LANGUAGE]"
//    case linerNotes = "©lnt"
//    case longDescription = "ldes"
//    case lyricist = "©aut"
//    case lyrics = "©lyr"
//    case mediaKind = "stik"
//    case mood = "[MOOD]"
//    case movementCount = "©mvc"
//    case movementName = "©mvn"
//    case movementNumber = "©mvi"
//    case narrator = "©nrt"
//    case onlineExtras = "©url"
//    case originalAlbum = "[ORIGINAL ALBUM]"
//    case originalArtist = "©ope"
//    case originalFilename = "[ORIGINAL FILENAME]"
//    case originalLyricist = "[ORIGINAL LYRICIST]"
//    case originalReleaseDate = "[ORIGINAL YEAR]"
//    case paymentWebpage = "[PAYMENT_URL]"
//    case performer = "©prf"
//    case podcast = "pcst"
//    case podcastCategory = "catg"
//    case podcastID = "egid"
//    case podcastKeywords = "keyw"
//    case podcastURL = "purl"
//    case phonogramRights = "©phg"
//    case producers = "©prd"
//    case publisher = "©pub"
//    case publisherWebpage = "[LABEL_URL]"
//    case purchaseDate = "purd"
//    case radioStation = "[RADIO_STATION]"
//    case radioStationOwner = "[STATION_OWNER]"
//    case radioStationWebpage = "[OFFICIAL_RADIO_URL]"
//    case recordCompany = "©mak"
//    case recordingDate = "©day"
//    case releaseDate = "rldt"
//    case seriesDescription = "sdes"
//    case setSubtitle = "©st3"
//    case soloist = "©sol"
//    case songDescription = "©des"
//    case soundEngineer = "©sne"
//    case sourceCredit = "©src"
//    case subtitle = "©snm"
//    case taggingTime = "[TAGGINGTIME]"
//    case thanks = "©thx"
//    case title = "©nam"
//    case titleSort = "sonm"
//    case trackNumber = "©trk"
//    case episodeTitle = "tven"
//    case episodeNumber = "tves"
//    case network = "tvnn"
//    case season = "tvsn"
//    case series = "tvsh"
//    case seriesSort = "sosn"
//    case work = "©wrk"
//    case year = "yrrc"
//
//    // Keyspace = AVMetadataKeySpaceQuickTimeMetadata
//    enum KeyFormat {
//        case boolean // return as boolean
//        case string // return as string
//        case integer // read in as number, return as integer
//        case date // read in as string, return as date
//        case data // read in as data, return varies
//        case unspecified
//    }
//
//    var keyFormat: KeyFormat {
//        switch self {
//            /// a metadata value read in using .numberValue, then translated to boolean for return
//            case .compilation,
//                 .podcast:
//                return .boolean
//            /// a metadata value read in as data and translated to an NSImage
//            case .podcastURL, // read as data, return as String
//                .trackNumber, // read as data, return as integer array or tuple
//                .discNumber: // read as data, return as integer array or tuple
//                return .data
//            /// a metadata value read in using .numberValue, returned as Integer
//            case .bpm,
//                 .contentRating,
//                 .mediaKind, // create enum
//                .episodeNumber,
//                .genreID,
//                .season,
//                .movementNumber,
//                .movementCount: return .integer
//            /// a metadata value read in using .stringValue, parsed and returned as Date?
//            case .originalReleaseDate,
//                 .purchaseDate,
//                 .releaseDate,
//                 .taggingTime,
//                 .year: return .date
//            /// a metadata value read in using .stringValue, returned as String
//            default: return .string
//        }
//    }
//
//    var keyspace: AVMetadataKeySpace {
//        switch self {
//            case .audioFileWebpage,
//                 .audioSourceWebpage,
//                 .contentAdvisory,
//                 .copyrightWebpage,
//                 .encodingSettings,
//                 .encodingTime,
//                 .initialKey,
//                 .language,
//                 .mood,
//                 .onlineExtras,
//                 .originalAlbum,
//                 .originalFilename,
//                 .originalLyricist,
//                 .originalReleaseDate,
//                 .paymentWebpage,
//                 .publisherWebpage,
//                 .radioStation,
//                 .radioStationOwner,
//                 .radioStationWebpage,
//                 .taggingTime: return .quickTimeUserData
//            default: return .iTunes
//        }
//    }
//}
