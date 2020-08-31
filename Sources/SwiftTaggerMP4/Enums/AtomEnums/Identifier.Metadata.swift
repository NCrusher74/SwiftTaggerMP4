//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation

enum MetadataIdentifier {
    
    case string(StringMetadataIdentifier)
    case integer(IntegerMetadataIdentifier)
    case image(String)
    case discNumber(String)
    case trackNumber(String)
    case podcastFeed(String)
    
    init(identifier: String) throws {
        if identifier == "covr" {
            self = .image(identifier)
        } else if identifier == "disk" {
            self = .discNumber(identifier)
        } else if identifier == "trkn" {
            self = .trackNumber(identifier)
        } else if identifier == "purl" {
            self = .podcastFeed(identifier)
        } else if let stringID = StringMetadataIdentifier(rawValue: identifier) {
            self = .string(stringID)
        } else if let intID = IntegerMetadataIdentifier(rawValue: identifier) {
            self = .integer(intID)
        } else {
            throw Mp4File.Error.UnsupportedMetadataFormat
        }
    }
}

enum IntegerMetadataIdentifier: String {
    case albumID = "akID"
    case appleStoreCountryID = "sfID"
    case artistID = "atID"
    case bpm = "tmpo"
    case compilation = "cpil"
    case composerID = "cmID"
    case conductorID = "cnID"
    case gaplessPlayback = "pgap"
    case genreID = "geID"
    case movementCount = "\u{00A9}mvc"
    case movementNumber = "\u{00A9}mvi"
    case mediaKind = "stik"
    case playlistID = "plID"
    case rating = "rtng"
    case showWorkAndMovement = "shwm"
    case tvEpisodeNumber = "tves"
    case tvSeason = "tvsn"
    case year = "yrrc"
}

enum StringMetadataIdentifier: String, CaseIterable {
    case acknowledgment = "\u{00A9}cak"
    case album = "\u{00A9}alb"
    case albumArtist = "aART"
    case albumArtistSort = "soaa"
    case albumSort = "soal"
    case arranger = "\u{00A9}arg"
    case arrangerKeywords = "\u{00A9}ark"
    case artDirector = "\u{00A9}ard"
    case artist = "\u{00A9}ART"
    case artistKeywords = "\u{00A9}prk"
    case artistSort = "soar"
    case artistUrl = "\u{00A9}prl"
    case category = "catg"
    case comment = "\u{00A9}cmt"
    case composer = "\u{00A9}com"
    case composerKeywords = "\u{00A9}cok"
    case composerSort = "soco"
    case conductor = "\u{00A9}con"
    case copyright = "cprt"
    case copyrightStatement = "\u{00A9}cpy"
    case customGenre = "\u{00A9}gen"
    case description = "\u{00A9}des"
    case director = "\u{00A9}dir"
    case editDateAndDescription1 = "\u{00A9}ed1"
    case editDateAndDescription2 = "\u{00A9}ed2"
    case editDateAndDescription3 = "\u{00A9}ed3"
    case editDateAndDescription4 = "\u{00A9}ed4"
    case editDateAndDescription5 = "\u{00A9}ed5"
    case editDateAndDescription6 = "\u{00A9}ed6"
    case editDateAndDescription7 = "\u{00A9}ed7"
    case editDateAndDescription8 = "\u{00A9}ed8"
    case editDateAndDescription9 = "\u{00A9}ed9"
    case encodedBy = "\u{00A9}enc"
    case encodingTool = "\u{00A9}too"
    case executiveProducer = "\u{00A9}xpd"
    case filmMakerUrl = "\u{00A9}mal"
    case format = "\u{00A9}fmt"
    case grouping = "\u{00A9}grp"
    case information = "\u{00A9}inf"
    case isrc = "\u{00A9}isr"
    case keywords = "keyw"
    case label = "\u{00A9}lab"
    case linerNotes = "\u{00A9}lnt"
    case longDescription = "ldes"
    case lyrics = "\u{00A9}lyr"
    case lyricist = "\u{00A9}aut"
    case movementName = "\u{00A9}mvn"
    case narrator = "\u{00A9}nrt"
    case originalArtist = "\u{00A9}ope"
    case owner = "ownr"
    case performers = "\u{00A9}prf"
    case podcast = "pcst"
    case podcastID = "egid"
    case podcastUrl = "purl"
    case predefinedGenre = "genr"
    case producer = "\u{00A9}prd"
    case producerKeywords = "\u{00A9}pdk"
    case publisher = "\u{00A9}pub"
    case publisherUrl = "\u{00A9}lal"
    case purchaseDate = "purd"
    case recordCompany = "\u{00A9}mak"
    case recordingDate = "\u{00A9}day"
    case recordingCopyright = "\u{00A9}phg"
    case releaseDate = "rldt"
    case requirements = "\u{00A9}req"
    case sellerID = "xid "
    case soundEngineer = "\u{00A9}sne"
    case softwareVersion = "\u{00A9}swr"
    case soloist = "\u{00A9}sol"
    case songDescription = "desc"
    case songwriter = "\u{00A9}swf"
    case songwriterKeywords = "\u{00A9}swk"
    case sourceCredit = "\u{00A9}src"
    case subtitle = "\u{00A9}snm"
    case subtitleKeywords = "\u{00A9}snk"
    case title = "\u{00A9}nam"
    case titleKeywords = "\u{00A9}nak"
    case titleSort = "sonm"
    case thanks = "\u{00A9}thx"
    case trackSubtitle = "\u{00A9}st3"
    case tvEpisodeTitle = "tven"
    case tvNetwork = "tvnn"
    case tvShow = "tvsh"
    case tvShowDescription = "sdes"
    case tvShowSort = "sosn"
    case website = "\u{00A9}url"
    case workName = "\u{00A9}wrk"
    case writer = "\u{00A9}wrt"
}
