//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/28/20.
//

import Foundation
public enum AtomKey: Hashable {
    
    /// The country code of the iTunes store
    case appleStoreCountryID
    /// The iTunes-store artist identifier
    case artistID
    /// The tempo of the track
    case bpm
    /// Boolean value indicating whether the track is part of a compilation
    case compilation
    /// The iTunes-store composer identifier
    case composerID
    /// The iTunes-store conductor identifier
    case conductorID
    /// Boolean value indicating there should be no delay between tracks
    case gaplessPlayback
    /// The iTunes-store genre identifier
    case genreID
    /// The iTunes-store account
    case iTunesAccount
    /// The iTunes-store album identifier
    case iTunesAccountType
    /// The total movements in a work
    case movementCount
    /// The index of a specific movement within a work
    case movementNumber
    /// The media kind value for the media
    case mediaKind
    /// Boolean value indicating whether or not the track is a podcast
    case podcast
    /// The iTunes playlist identifier
    case playlistID
    /// Rating indicator for `clean`, `explicit`, or `none`
    case rating
    /// Boolean value indicating whether Work and Movement data should be displayed
    case showWorkAndMovement
    /// The episode number of a television episode
    case tvEpisodeNumber
    /// The season number of a television show
    case tvSeason
    /// Year when media was recorded
    case year
    /// Acknowledgments
    case acknowledgment
    /// Album Title
    case album
    /// Album Artist or Band
    case albumArtist
    /// Sort by album artist
    case albumArtistSort
    /// Sort by album
    case albumSort
    /// Name of arranger
    case arranger
    /// Keywords for arranger
    case arrangerKeywords
    /// The art director of the movie
    case artDirector
    /// Name of primary artist (often used for author in audiobooks)
    case artist
    /// Keywords of main artist and performer
    case artistKeywords
    /// Sort by artist
    case artistSort
    /// URL of main artist and performer
    case artistUrl
    /// iTunes podcast category
    case category
    /// Comments
    case comment
    /// Name of composer (often used for narrator in audiobooks)
    case composer
    /// Keywords for composer
    case composerKeywords
    /// Sort by composer
    case composerSort
    /// Name of conductor
    case conductor
    /// copyright etc.
    case copyright
    /// Copyright statement
    case copyrightStatement
    /// User-defined genre
    case customGenre
    /// Description (short)
    case description
    /// Name of movie’s director
    case director
    /// Edit dates and descriptions
    case editDateAndDescription1
    /// Edit dates and descriptions
    case editDateAndDescription2
    /// Edit dates and descriptions
    case editDateAndDescription3
    /// Edit dates and descriptions
    case editDateAndDescription4
    /// Edit dates and descriptions
    case editDateAndDescription5
    /// Edit dates and descriptions
    case editDateAndDescription6
    /// Edit dates and descriptions
    case editDateAndDescription7
    /// Edit dates and descriptions
    case editDateAndDescription8
    /// Edit dates and descriptions
    case editDateAndDescription9
    /// Encoder
    case encodedBy
    /// Encoding library or app
    case encodingTool
    /// Executive producer of the movie
    case executiveProducer
    /// Indication of movie format (computer-generated, digitized, and so on)
    case format
    /// Grouping, often used instead of `Work` for multi-part compositions
    case grouping
    /// Information about the movie
    case information
    /// ISRC code
    case isrc
    /// iTunes podcast keywords
    case keywords
    /// Name of record label
    case label
    /// URL of record label
    case labelUrl
    /// Liner notes
    case linerNotes
    /// Long desccription
    case longDescription
    /// Lyrics
    case lyrics
    /// Lyricist
    case lyricist
    /// Movement name
    case movementName
    /// Narrator (as listed by Audible in audiobooks)
    case narrator
    /// Original artist
    case originalArtist
    /// Owner
    case owner
    /// Names of performers
    case performers
    /// Podcast ID
    case podcastID
    /// Podcast URL
    case podcastUrl
    /// Media genre
    case predefinedGenre
    /// Name of producer
    case producer
    /// Keywords for producer
    case producerKeywords
    /// Media publisher (often used in place of recordCompany or label)
    case publisher
    /// Purchase Data
    case purchaseDate
    /// Name of file creator or maker
    case recordCompany
    /// URL of file creator or maker
    case recordCompanyUrl
    /// Date the movie content was created
    case recordingDate
    /// Recording copyright statement, aka phonogram rights. Normally preceded by the symbol (P) ( P in a circle)
    case recordingCopyright
    /// Release date
    case releaseDate
    /// Special hardware and software requirements
    case requirements
    /// iTunes seller ID
    case sellerID
    /// Sound engineer of track
    case soundEngineer
    /// Name and version number of the software (or hardware) that generated this movie
    case softwareVersion
    /// Featured soloist
    case soloist
    /// Song description
    case songDescription
    /// Name of songwriter
    case songwriter
    /// Keywords for songwriter
    case songwriterKeywords
    /// Credits for those who provided movie source content
    case sourceCredit
    /// Subtitle of content
    case subtitle
    /// Subtitle keywords of the content
    case subtitleKeywords
    /// Title of the content
    case title
    /// Title keywords of the content
    case titleKeywords
    /// Sort by title
    case titleSort
    /// Thanks
    case thanks
    /// Track subtitle
    case trackSubtitle
    /// TV Episode title
    case tvEpisodeTitle
    /// TV Network
    case tvNetwork
    /// TV Show
    case tvShow
    /// TV Show description
    case tvShowDescription
    /// Sort by TV Show
    case tvShowSort
    /// Website
    case website
    /// Work name
    case workName
    /// Name of movie’s writer
    case writer
    /// Embedded cover art
    case coverArt
    /// The index of the track within the total number of tracks
    case trackNumber
    /// The index of the disc within the total number of discs
    case discNumber
    /// Freeform metadata string (may be another data type, such as integer or boolean or date, stored as a string)
    case unknown(String)
    
    var priority: Int {
        switch self {
            case .appleStoreCountryID: return 97
            case .artistID: return 12
            case .bpm: return 65
            case .compilation: return 20
            case .composerID: return 19
            case .conductorID: return 70
            case .gaplessPlayback: return 64
            case .genreID: return 71
            case .iTunesAccount: return 89
            case .iTunesAccountType: return 90
            case .movementCount: return 43
            case .movementNumber: return 42
            case .mediaKind: return 66
            case .podcast: return 27
            case .playlistID: return 63
            case .rating: return 62
            case .showWorkAndMovement: return 44
            case .tvEpisodeNumber: return 37
            case .tvSeason: return 35
            case .year: return 28
            case .acknowledgment: return 96
            case .album: return 1
            case .albumArtist: return 3
            case .albumArtistSort: return 4
            case .albumSort: return 2
            case .arranger: return 67
            case .arrangerKeywords: return 68
            case .artDirector: return 77
            case .artist: return 11
            case .artistKeywords: return 14
            case .artistSort: return 13
            case .artistUrl: return 15
            case .category: return 49
            case .comment: return 26
            case .composer: return 16
            case .composerKeywords: return 18
            case .composerSort: return 17
            case .conductor: return 69
            case .copyright: return 60
            case .copyrightStatement: return 61
            case .customGenre: return 48
            case .description: return 25
            case .director: return 76
            case .editDateAndDescription1: return 103
            case .editDateAndDescription2: return 104
            case .editDateAndDescription3: return 105
            case .editDateAndDescription4: return 106
            case .editDateAndDescription5: return 107
            case .editDateAndDescription6: return 108
            case .editDateAndDescription7: return 109
            case .editDateAndDescription8: return 110
            case .editDateAndDescription9: return 111
            case .encodedBy: return 83
            case .encodingTool: return 84
            case .executiveProducer: return 72
            case .format: return 85
            case .grouping: return 50
            case .information: return 88
            case .isrc: return 51
            case .keywords: return 52
            case .label: return 58
            case .labelUrl: return 59
            case .linerNotes: return 101
            case .longDescription: return 102
            case .lyrics: return 100
            case .lyricist: return 78
            case .movementName: return 41
            case .narrator: return 79
            case .originalArtist: return 53
            case .owner: return 57
            case .performers: return 80
            case .podcastID: return 45
            case .podcastUrl: return 46
            case .predefinedGenre: return 47
            case .producer: return 73
            case .producerKeywords: return 74
            case .publisher: return 56
            case .purchaseDate: return 92
            case .recordCompany: return 54
            case .recordCompanyUrl: return 55
            case .recordingDate: return 29
            case .recordingCopyright: return 75
            case .releaseDate: return 30
            case .requirements: return 87
            case .sellerID: return 91
            case .soundEngineer: return 81
            case .softwareVersion: return 86
            case .soloist: return 82
            case .songDescription: return 24
            case .songwriter: return 22
            case .songwriterKeywords: return 23
            case .sourceCredit: return 94
            case .subtitle: return 5
            case .subtitleKeywords: return 6
            case .title: return 7
            case .titleKeywords: return 9
            case .titleSort: return 8
            case .thanks: return 95
            case .trackSubtitle: return 10
            case .tvEpisodeTitle: return 36
            case .tvNetwork: return 38
            case .tvShow: return 33
            case .tvShowDescription: return 34
            case .tvShowSort: return 39
            case .website: return 93
            case .workName: return 40
            case .writer: return 21
            case .coverArt: return 98
            case .trackNumber: return 32
            case .discNumber: return 31
            case .unknown(_): return 99
        }
    }
    static var knownCases: [AtomKey] {
        return [.acknowledgment, .album, .albumArtist, .albumArtistSort, .albumSort, .appleStoreCountryID, .arranger, .arrangerKeywords, .artDirector, .artist, .artistID, .artistKeywords, .artistSort, .artistUrl, .bpm, .category, .comment, .compilation, .composer, .composerID, .composerKeywords, .composerSort, .conductor, .conductorID, .copyright, .copyrightStatement, .coverArt, .customGenre, .description, .director, .discNumber, .editDateAndDescription1, .editDateAndDescription2, .editDateAndDescription3, .editDateAndDescription4, .editDateAndDescription5, .editDateAndDescription6, .editDateAndDescription7, .editDateAndDescription8, .editDateAndDescription9, .encodedBy, .encodingTool, .executiveProducer, .format, .gaplessPlayback, .genreID, .grouping, .iTunesAccount, .iTunesAccountType, .information, .isrc, .keywords, .label, .labelUrl, .linerNotes, .longDescription, .lyrics, .lyricist, .mediaKind, .movementName, .movementCount, .movementNumber, .narrator, .originalArtist, .owner, .performers, .playlistID, .podcast, .podcastID, .podcastUrl, .predefinedGenre, .producer, .producerKeywords, .publisher, .purchaseDate, .rating, .recordCompany, .recordCompanyUrl, .recordingCopyright, .recordingDate, .releaseDate, .requirements, .sellerID, .showWorkAndMovement, .softwareVersion, .soloist, .songDescription, .songwriter, .songwriterKeywords, .soundEngineer, .sourceCredit, .subtitle, .subtitleKeywords, .thanks, .title, .titleKeywords, .titleSort, .trackNumber, .trackSubtitle, .tvEpisodeNumber, .tvSeason, .tvShow, .tvNetwork, .tvShowSort, .tvEpisodeTitle, .tvShowDescription, .website, .workName, .writer, .year]
    }
    
    var stringValue: String {
        switch self {
            case .appleStoreCountryID: return "appleStoreCountryID"
            case .artistID: return "artistID"
            case .bpm: return "bpm"
            case .compilation: return "compilation"
            case .composerID: return "composerID"
            case .conductorID: return "conductorID"
            case .gaplessPlayback: return "gaplessPlayback"
            case .genreID: return "genreID"
            case .iTunesAccount: return "iTunesAccount"
            case .iTunesAccountType: return "iTunesAccountType"
            case .movementCount: return "movementCount"
            case .movementNumber: return "movementNumber"
            case .mediaKind: return "mediaKind"
            case .podcast: return "podcast"
            case .playlistID: return "playlistID"
            case .rating: return "rating"
            case .showWorkAndMovement: return "showWorkAndMovement"
            case .tvEpisodeNumber: return "tvEpisodeNumber"
            case .tvSeason: return "tvSeason"
            case .year: return "year"
            case .acknowledgment: return "acknowledgment"
            case .album: return "album"
            case .albumArtist: return "albumArtist"
            case .albumArtistSort: return "albumArtistSort"
            case .albumSort: return "albumSort"
            case .arranger: return "arranger"
            case .arrangerKeywords: return "arrangerKeywords"
            case .artDirector: return "artDirector"
            case .artist: return "artist"
            case .artistKeywords: return "artistKeywords"
            case .artistSort: return "artistSort"
            case .artistUrl: return "artistUrl"
            case .category: return "category"
            case .comment: return "comment"
            case .composer: return "composer"
            case .composerKeywords: return "composerKeywords"
            case .composerSort: return "composerSort"
            case .conductor: return "conductor"
            case .copyright: return "copyright"
            case .copyrightStatement: return "copyrightStatement"
            case .customGenre: return "customGenre"
            case .description: return "description"
            case .director: return "director"
            case .editDateAndDescription1: return "editDateAndDescription1"
            case .editDateAndDescription2: return "editDateAndDescription2"
            case .editDateAndDescription3: return "editDateAndDescription3"
            case .editDateAndDescription4: return "editDateAndDescription4"
            case .editDateAndDescription5: return "editDateAndDescription5"
            case .editDateAndDescription6: return "editDateAndDescription6"
            case .editDateAndDescription7: return "editDateAndDescription7"
            case .editDateAndDescription8: return "editDateAndDescription8"
            case .editDateAndDescription9: return "editDateAndDescription9"
            case .encodedBy: return "encodedBy"
            case .encodingTool: return "encodingTool"
            case .executiveProducer: return "executiveProducer"
            case .format: return "format"
            case .grouping: return "grouping"
            case .information: return "information"
            case .isrc: return "isrc"
            case .keywords: return "keywords"
            case .label: return "label"
            case .labelUrl: return "labelUrl"
            case .linerNotes: return "linerNotes"
            case .longDescription: return "longDescription"
            case .lyrics: return "lyrics"
            case .lyricist: return "lyricist"
            case .movementName: return "movementName"
            case .narrator: return "narrator"
            case .originalArtist: return "originalArtist"
            case .owner: return "owner"
            case .performers: return "performers"
            case .podcastID: return "podcastID"
            case .podcastUrl: return "podcastUrl"
            case .predefinedGenre: return "predefinedGenre"
            case .producer: return "producer"
            case .producerKeywords: return "producerKeywords"
            case .publisher: return "publisher"
            case .purchaseDate: return "purchaseDate"
            case .recordCompany: return "recordCompany"
            case .recordCompanyUrl: return "recordCompanyUrl"
            case .recordingDate: return "recordingDate"
            case .recordingCopyright: return "recordingCopyright"
            case .releaseDate: return "releaseDate"
            case .requirements: return "requirements"
            case .sellerID: return "sellerID"
            case .soundEngineer: return "soundEngineer"
            case .softwareVersion: return "softwareVersion"
            case .soloist: return "soloist"
            case .songDescription: return "songDescription"
            case .songwriter: return "songwriter"
            case .songwriterKeywords: return "songwriterKeywords"
            case .sourceCredit: return "sourceCredit"
            case .subtitle: return "subtitle"
            case .subtitleKeywords: return "subtitleKeywords"
            case .title: return "title"
            case .titleKeywords: return "titleKeywords"
            case .titleSort: return "titleSort"
            case .thanks: return "thanks"
            case .trackSubtitle: return "trackSubtitle"
            case .tvEpisodeTitle: return "tvEpisodeTitle"
            case .tvNetwork: return "tvNetwork"
            case .tvShow: return "tvShow"
            case .tvShowDescription: return "tvShowDescription"
            case .tvShowSort: return "tvShowSort"
            case .website: return "website"
            case .workName: return "workName"
            case .writer: return "writer"
            case .coverArt: return "coverArt"
            case .trackNumber: return "trackNumber"
            case .discNumber: return "discNumber"
            case .unknown(let string): return string
        }
    }
    
    init(atomID: IntegerMetadataIdentifier) {
        switch atomID {
            case .appleStoreCountryID: self = .appleStoreCountryID
            case .artistID: self = .artistID
            case .bpm: self = .bpm
            case .compilation: self = .compilation
            case .composerID: self = .composerID
            case .conductorID: self = .conductorID
            case .gaplessPlayback: self = .gaplessPlayback
            case .genreID: self = .genreID
            case .iTunesAccountType: self = .iTunesAccountType
            case .movementCount: self = .movementCount
            case .movementNumber: self = .movementNumber
            case .mediaKind: self = .mediaKind
            case .podcast: self = .podcast
            case .playlistID: self = .playlistID
            case .rating: self = .rating
            case .showWorkAndMovement: self = .showWorkAndMovement
            case .tvEpisodeNumber: self = .tvEpisodeNumber
            case .tvSeason: self = .tvSeason
            case .year: self = .year
        }
    }

    static var integerKeys: [AtomKey] {
        var keys = [AtomKey]()
        for item in IntegerMetadataIdentifier.allCases {
            keys.append(AtomKey(atomID: item))
        }
        return keys
    }
    
    init(atomID: StringMetadataIdentifier) {
        switch atomID {
            case .acknowledgment: self = .acknowledgment
            case .album: self = .album
            case .albumArtist: self = .albumArtist
            case .albumArtistSort: self = .albumArtistSort
            case .albumSort: self = .albumSort
            case .arranger: self = .arranger
            case .arrangerKeywords: self = .arrangerKeywords
            case .artDirector: self = .artDirector
            case .artist: self = .artist
            case .artistKeywords: self = .artistKeywords
            case .artistSort: self = .artistSort
            case .artistUrl: self = .artistUrl
            case .category: self = .category
            case .comment: self = .comment
            case .composer: self = .composer
            case .composerKeywords: self = .composerKeywords
            case .composerSort: self = .composerSort
            case .conductor: self = .conductor
            case .copyright: self = .copyright
            case .copyrightStatement: self = .copyrightStatement
            case .customGenre: self = .customGenre
            case .description: self = .description
            case .director: self = .director
            case .editDateAndDescription1: self = .editDateAndDescription1
            case .editDateAndDescription2: self = .editDateAndDescription2
            case .editDateAndDescription3: self = .editDateAndDescription3
            case .editDateAndDescription4: self = .editDateAndDescription4
            case .editDateAndDescription5: self = .editDateAndDescription5
            case .editDateAndDescription6: self = .editDateAndDescription6
            case .editDateAndDescription7: self = .editDateAndDescription7
            case .editDateAndDescription8: self = .editDateAndDescription8
            case .editDateAndDescription9: self = .editDateAndDescription9
            case .encodedBy: self = .encodedBy
            case .encodingTool: self = .encodingTool
            case .executiveProducer: self = .executiveProducer
            case .format: self = .format
            case .grouping: self = .grouping
            case .information: self = .information
            case .isrc: self = .isrc
            case .iTunesAccount: self = .iTunesAccount
            case .keywords: self = .keywords
            case .label: self = .label
            case .labelUrl: self = .labelUrl
            case .linerNotes: self = .linerNotes
            case .longDescription: self = .longDescription
            case .lyrics: self = .lyrics
            case .lyricist: self = .lyricist
            case .movementName: self = .movementName
            case .narrator: self = .narrator
            case .originalArtist: self = .originalArtist
            case .owner: self = .owner
            case .performers: self = .performers
            case .podcastID: self = .podcastID
            case .podcastUrl: self = .podcastUrl
            case .predefinedGenre: self = .predefinedGenre
            case .producer: self = .producer
            case .producerKeywords: self = .producerKeywords
            case .publisher: self = .publisher
            case .purchaseDate: self = .purchaseDate
            case .recordCompany: self = .recordCompany
            case .recordCompanyUrl: self = .recordCompanyUrl
            case .recordingDate: self = .recordingDate
            case .recordingCopyright: self = .recordingCopyright
            case .releaseDate: self = .releaseDate
            case .requirements: self = .requirements
            case .sellerID: self = .sellerID
            case .soundEngineer: self = .soundEngineer
            case .softwareVersion: self = .softwareVersion
            case .soloist: self = .soloist
            case .songDescription: self = .songDescription
            case .songwriter: self = .songwriter
            case .songwriterKeywords: self = .songwriterKeywords
            case .sourceCredit: self = .sourceCredit
            case .subtitle: self = .subtitle
            case .subtitleKeywords: self = .subtitleKeywords
            case .title: self = .title
            case .titleKeywords: self = .titleKeywords
            case .titleSort: self = .titleSort
            case .thanks: self = .thanks
            case .trackSubtitle: self = .trackSubtitle
            case .tvEpisodeTitle: self = .tvEpisodeTitle
            case .tvNetwork: self = .tvNetwork
            case .tvShow: self = .tvShow
            case .tvShowDescription: self = .tvShowDescription
            case .tvShowSort: self = .tvShowSort
            case .website: self = .website
            case .workName: self = .workName
            case .writer: self = .writer
        }
    }
    
    static var stringKeys: [AtomKey] {
        var keys = [AtomKey]()
        for item in StringMetadataIdentifier.allCases {
            keys.append(AtomKey(atomID: item))
        }
        return keys
    }

    static var knownIdentifiers: [String] {
        return IntegerMetadataIdentifier.rawValues + StringMetadataIdentifier.rawValues + ["covr", "trkn", "disk", "----"]
    }
    
    init(idString: String, name: String? = nil) {
        if idString == "covr" {
            self = .coverArt
        } else if idString == "trkn" {
            self = .trackNumber
        } else if idString == "disk" {
            self = .discNumber
        } else if idString == "----" {
            self = .unknown(name ?? "")
        } else {
            if let identifier = StringMetadataIdentifier(rawValue: idString) {
                self.init(atomID: identifier)
            } else if let identifier = IntegerMetadataIdentifier(rawValue: idString) {
                self.init(atomID: identifier)
            } else {
                self = .unknown(name ?? "")
            }
        }
    }
    
    init?(stringValue: String) {
        if stringValue.hasPrefix("(----) ") {
            let trimmed = String(stringValue.dropFirst(7))
            self = .unknown(trimmed)
        } else {
            for key in AtomKey.knownCases {
                if stringValue == key.stringValue.convertCamelToUpperCase() {
                    self = key
                } else if stringValue.hasPrefix("(----) ") {
                    
                    let trimmed = stringValue.trimmingCharacters(in: CharacterSet(charactersIn: "(----) "))
                    self = .unknown(trimmed.capitalized)
                } else {
                    self = .unknown(stringValue.capitalized)
                }
            }
            return nil
        }
    }
}
