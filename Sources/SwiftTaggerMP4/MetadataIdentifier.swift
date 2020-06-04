//
//  AtomIdentifier.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import AVFoundation

@available(OSX 10.13, *)
enum Metadata: String, CaseIterable {
    
    case acknowledgment = "©cak"
    case album = "©alb"
    case albumArtist = "aART"
    case albumArtistSort = "soaa"
    case albumSort = "soal"
    case arranger = "©arg"
    case artDirector = "©ard"
    case artist = "©ART"
    case artistSort = "soar"
    case artistWebpage = "com.apple.iTunes.URL_OFFICIAL_ARTIST_SITE"
    case audioFileWebpageYate = "com.apple.iTunes.OFFICIAL_AUDIO_FILE_URL"
    case audioFileWebpageKid3 = "com.apple.iTunes.WWWAUDIOFILE"
    case audioSourceWebpageYate = "com.apple.iTunes.OFFICIAL_AUDIO_SOURCE_URL"
    case audioSourceWebpageKid3 = "com.apple.iTunes.WWWAUDIOSOURCE"
    case bpm = "tmpo"
    case comment = "©cmt"
    case compilation = "cpil"
    case composer = "©wrt"
    case composerSort = "soco"
    case conductor = "©con"
    case contentAdvisory = "com.apple.iTunes.iTunEXTC"
    case contentRating = "rtng"
    case copyright = "cprt"
    case copyrightWebpage = "com.apple.iTunes.COPYRIGHT URL"
    case description = "©des"
    case director = "©dir"
    case discNumber = "disk"
    case encodedBy = "©enc"
    case encodingSettings = "com.apple.iTunes.ENCODING"
    case encodingTime = "com.apple.iTunes.ENCODINGTIME"
    case encodingTool = "©too"
    case episodeNumber = "tves"
    case episodeTitle = "tven"
    case executiveProducer = "©xpd"
    case genre = "©gen"
    case genreID = "geID"
    case initialKeyYate = "com.apple.iTunes.KEY"
    case initialKeyKid3 = "com.apple.iTunes.INITIALKEY"
    case isrc = "©isr"
    case language = "com.apple.iTunes.LANGUAGE"
    case linerNotes = "©lnt"
    case longDescription = "ldes"
    case lyricist = "©aut"
    case lyrics = "©lyr"
    case mediaType = "stik"
    case mood = "com.apple.iTunes.MOOD"
    case movementName = "©mvn"
    case movementNumber = "©mvi"
    case movementTotal = "©mvc"
    case narrator = "©nrt"
    case network = "tvnn"
    case onlineExtras = "©url"
    case originalAlbumYate = "com.apple.iTunes.ORIGINAL ALBUM"
    case originalAlbumKid3 = "com.apple.iTunes.ORIGINALALBUM"
    case originalArtist = "©ope"
    case originalFilename = "com.apple.iTunes.ORIGINAL FILENAME"
    case originalLyricist = "com.apple.iTunes.ORIGINAL LYRICIST"
    case originalYearYate = "com.apple.iTunes.ORIGINAL YEAR"
    case originalYearKid3 = "com.apple.iTunes.ORIGINALYEAR"
    case paymentWebpage = "com.apple.iTunes.PAYMENT_URL"
    case performer = "©prf"
    case podcast = "pcst"
    case podcastCategory = "catg"
    case podcastDescription = "desc"
    case podcastID = "egid"
    case podcastKeywords = "keyw"
    case podcastUrl = "purl"
    case predefinedGenre = "gnre"
    case phonogramRights = "©phg"
    case producer = "©prd"
    case publisher = "©pub"
    case publisherWebpage = "com.apple.iTunes.LABEL_URL"
    case purchaseDate = "purd"
    case radioStation = "com.apple.iTunes.RADIO_STATION"
    case radioStationOwner = "com.apple.iTunes.STATION_OWNER"
    case radioStationWebpage = "com.apple.iTunes.OFFICIAL_RADIO_URL"
    case recordCompany = "©mak"
    case recordingDate = "©day"
    case releaseDate = "rldt"
    case season = "tvsn"
    case series = "tvsh"
    case seriesDescription = "sdes"
    case seriesSort = "sosn"
    case soloist = "©sol"
    case soundEngineer = "©sne"
    case sourceCredit = "©src"
    case subtitle = "©snm"
    case taggingTime = "com.apple.iTunes.TAGGINGTIME"
    case thanks = "©thx"
    case title = "©nam"
    case titleSort = "sonm"
    case trackNumber = "trkn"
    case trackSubtitle = "©st3"
    case work = "©wrk"
    case year = "yrrc"
    
    var keySpace: AVMetadataKeySpace {
        if self.rawValue.count == 4 {
            return AVMetadataKeySpace(rawValue: "itsk")
        } else {
            return AVMetadataKeySpace(rawValue: "itlk")
        }
    }
}
