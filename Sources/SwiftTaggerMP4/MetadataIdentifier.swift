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
    // case albumArtistSort
    // case albumSort
    case arranger
    case artDirector
    case artist
    // case artistSort
    // case artistWebpage
    // case audioFileWebpage
    // case audioSourceWebpage
    case bpm
    case comment
    case compilation
    
    
    var identifier: AVMetadataIdentifier {
        switch self {
            case .acknowledgment: return .iTunesMetadataAcknowledgement
            case .album: return .iTunesMetadataAlbum
            case .albumArtist: return .iTunesMetadataAlbumArtist
            case .arranger: return .iTunesMetadataArranger
            case .artDirector: return .iTunesMetadataArtDirector
            case .artist: return .iTunesMetadataArtist
            case .bpm: return .iTunesMetadataBeatsPerMin
            case .comment: return .iTunesMetadataUserComment
            case .compilation: return .iTunesMetadataDiscCompilation
        }
    }
    
    var key: AVMetadataKey {
        switch self {
            case .acknowledgment : return .iTunesMetadataKeyAcknowledgement
            case .album : return .iTunesMetadataKeyAlbum
            case .albumArtist: return .iTunesMetadataKeyAlbumArtist
            case .arranger: return .iTunesMetadataKeyArranger
            case .artDirector: return .iTunesMetadataKeyArtDirector
            case .artist: return .iTunesMetadataKeyArtist
            case .bpm: return .iTunesMetadataKeyBeatsPerMin
            case .comment: return .iTunesMetadataKeyUserComment
            case .compilation: return .iTunesMetadataKeyDiscCompilation
        }
    }
    
    var metadataFormat: AVMetadataFormat {
        switch self {
            case .acknowledgment,
                 .album,
                 .albumArtist,
                 .arranger,
                 .artDirector,
                 .artist,
                 .bpm,
                 .comment,
                 .comment,
                 .compilation: return AVMetadataFormat.iTunesMetadata
        }
    }
    
    var keySpace: AVMetadataKeySpace {
        switch self {
            case .acknowledgment,
                 .album,
                 .albumArtist,
                 .arranger,
                 .artDirector,
                 .artist,
                 .bpm,
                 .comment,
                 .comment,
                 .compilation: return AVMetadataKeySpace.iTunes
        }
    }
    
    enum Format: Int {
        case string = 0
        case integer = 1
        case boolean = 2
        case data = 3
        case intArray = 4
        case stringArray = 5
        case date = 6
    }
    
    var format: Format {
        switch self {
            case .acknowledgment,
                 .album,
                 .albumArtist,
                 .arranger,
                 .artDirector,
                 .artist,
                 .comment: return Format.string
            case .bpm: return Format.integer
            case .compilation: return Format.boolean
        }
    }
}

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

// case albumArtistSort
// case albumSort
