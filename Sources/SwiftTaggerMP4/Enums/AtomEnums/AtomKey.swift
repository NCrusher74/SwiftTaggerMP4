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
    
    private init(atomID: IntegerMetadataIdentifier) {
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

    private init(atomID: StringMetadataIdentifier) {
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
    
    init(string: String, name: String?) {
        if string == "covr" {
            self = .coverArt
        } else if string == "trkn" {
            self = .trackNumber
        } else if string == "disk" {
            self = .discNumber
        } else if string == "----" {
            self = .unknown(name ?? "")
        } else {
            if let stringID = StringMetadataIdentifier(rawValue: string) {
                self.init(atomID: stringID)
            } else if let intID = IntegerMetadataIdentifier(rawValue: string) {
                self.init(atomID: intID)
            } else {
                fatalError("Cannot initialize atom key for metadata atom \(string)")
            }
        }
    }
}
