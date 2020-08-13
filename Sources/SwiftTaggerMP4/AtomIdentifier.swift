//
//  AtomIdentifier.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.

import SwiftMp4MetadataParser
import Foundation

@available(OSX 10.13, *)
public enum AtomIdentifier: String, CaseIterable {
    case acknowledgment = "\u{00A9}cak"
    case album = "\u{00A9}alb"
    case albumArtist = "aART"
    case albumArtistSort = "soaa"
    case albumID = "akID"
    case albumSort = "soal"
    case appleStoreCountryID = "sfID"
    case arranger = "\u{00A9}arg"
    case arrangerKeywords = "\u{00A9}ark"
    case artDirector = "\u{00A9}ard"
    case artist = "\u{00A9}ART"
    case artistID = "atID"
    case artistKeywords = "\u{00A9}prk"
    case artistSort = "soar"
    case artistUrl = "\u{00A9}prl"
    case bpm = "tmpo"
    case category = "catg"
    case comment = "\u{00A9}cmt"
    case compilation = "cpil"
    case composer = "\u{00A9}com"
    case composerID = "cmID"
    case composerKeywords = "\u{00A9}cok"
    case composerSort = "soco"
    case conductor = "\u{00A9}con"
    case conductorID = "cnID"
    case copyright = "cprt"
    case copyrightStatement = "\u{00A9}cpy"
    case coverArt = "covr"
    case customGenre = "\u{00A9}gen"
    case description = "\u{00A9}des"
    case director = "\u{00A9}dir"
    case discNumber = "disk"
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
    case gaplessPlayback = "pgap"
    case genreID = "geID"
    case grouping = "\u{00A9}grp"
    case information = "\u{00A9}inf"
    case isrc = "\u{00A9}isr"
    case keywords = "keyw"
    case label = "\u{00A9}lab"
    case linerNotes = "\u{00A9}lnt"
    case longDescription = "ldes"
    case lyrics = "\u{00A9}lyr"
    case lyricist = "\u{00A9}aut"
    case mediaType = "stik"
    case movementName = "\u{00A9}mvn"
    case movementCount = "\u{00A9}mvc"
    case movementNumber = "\u{00A9}mvi"
    case narrator = "\u{00A9}nrt"
    case originalArtist = "\u{00A9}ope"
    case owner = "ownr"
    case performers = "\u{00A9}prf"
    case playlistID = "plID"
    case podcast = "pcst"
    case podcastID = "egid"
    case predefinedGenre = "genr"
    case producer = "\u{00A9}prd"
    case producerKeywords = "\u{00A9}pdk"
    case publisher = "\u{00A9}pub"
    case publisherUrl = "\u{00A9}lal"
    case purchaseDate = "purd"
    case podcastUrl = "purl"
    case rating = "rtng"
    case recordCompany = "\u{00A9}mak"
    case recordingDate = "\u{00A9}day"
    case recordingCopyright = "\u{00A9}phg"
    case recordingYear = "yrrc"
    case releaseDate = "rldt"
    case requirements = "\u{00A9}req"
    case sellerID = "xid "
    case showWorkAndMovement = "shwm"
    case soundEngineer = "\u{00A9}sne"
    case softwareVersion = "\u{00A9}swr"
    case soloist = "\u{00A9}sol"
    case songDescription = "desc"
    case songwriterKeywords = "\u{00A9}swk"
    case sourceCredit = "\u{00A9}src"
    case subtitle = "\u{00A9}snm"
    case subtitleKeywords = "\u{00A9}snk"
    case title = "\u{00A9}nam"
    case titleKeywords = "\u{00A9}nak"
    case titleSort = "sonm"
    case thanks = "\u{00A9}thx"
    case trackNumber = "trkn"
    case trackSubtitle = "\u{00A9}st3"
    case tvEpisodeNumber = "tves"
    case tvEpisodeTitle = "tven"
    case tvNetwork = "tvnn"
    case tvSeason = "tvsn"
    case tvShow = "tvsh"
    case tvShowDescription = "sdes"
    case tvShowSort = "sosn"
    case website = "\u{00A9}url"
    case workName = "\u{00A9}wrk"
    case writer = "\u{00A9}wrt"
    case unknown = "----"

    var handler: MetadataHandler {
        switch self {
            case .coverArt: return .image
            case .discNumber,
                 .trackNumber: return .intArray
            case .compilation,
                 .gaplessPlayback,
                 .podcast,
                 .showWorkAndMovement: return .boolean
            case .purchaseDate,
                 .recordingDate,
                 .recordingYear,
                 .releaseDate: return .date
            case .arrangerKeywords,
                 .artistKeywords,
                 .composerKeywords,
                 .keywords,
                 .producerKeywords,
                 .songwriterKeywords,
                 .subtitleKeywords,
                 .titleKeywords: return .stringArray
            case .albumID,
                 .appleStoreCountryID,
                 .artistID,
                 .bpm,
                 .composerID,
                 .conductorID,
                 .genreID,
                 .mediaType,
                 .movementCount,
                 .movementNumber,
                 .playlistID,
                 .rating,
                 .tvEpisodeNumber,
                 .tvSeason: return .integer
            default: return .string
        }
    }
    
    var stringMetadataID: SwiftMp4MetadataParser.MetadataIDString? {
        switch self.handler {
            case .string: return SwiftMp4MetadataParser.MetadataIDString(rawValue: self.rawValue)!
            default: return nil
        }
    }
    
    var stringArrayMetadataID: SwiftMp4MetadataParser.MetadataIDArrayString? {
        switch self.handler {
            case .stringArray: return SwiftMp4MetadataParser.MetadataIDArrayString(rawValue: self.rawValue)!
            default: return nil
        }
    }

    var integerMetadataID: SwiftMp4MetadataParser.MetadataIDInt? {
        switch self.handler {
            case .integer, .boolean: return SwiftMp4MetadataParser.MetadataIDInt(rawValue: self.rawValue)!
            default: return nil
        }
    }

    var intArrayMetadataID: SwiftMp4MetadataParser.MetadataIDArrayInt? {
        switch self.handler {
            case .intArray: return SwiftMp4MetadataParser.MetadataIDArrayInt(rawValue: self.rawValue)!
            default: return nil
        }
    }

    var dateMetadataID: SwiftMp4MetadataParser.MetadataIDDate? {
        switch self.handler {
            case .date: return SwiftMp4MetadataParser.MetadataIDDate(rawValue: self.rawValue)!
            default: return nil
        }
    }
}

enum MetadataHandler {
    case string
    case stringArray
    case integer
    case intArray
    case boolean
    case date
    case image
}