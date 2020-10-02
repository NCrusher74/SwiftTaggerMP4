/*
 Identifier.Metadata.swift
 
 
 Created by Nolaine Crusher on 8/30/20.
 */

import Foundation
/// Metadata atom identifiers associated with atoms containing integer content
///
/// "Integer content", for our purposes, also includes boolean values, which are stored as 1 for `true` or 0 for `false`
enum IntegerMetadataIdentifier: String {
    /// The country code of the iTunes store
    case appleStoreCountryID = "sfID"
    /// The iTunes-store artist identifier
    case artistID = "atID"
    /// The tempo of the track
    case bpm = "tmpo"
    /// Boolean value indicating whether the track is part of a compilation
    case compilation = "cpil"
    /// The iTunes-store composer identifier
    case composerID = "cmID"
    /// The iTunes-store conductor identifier
    case conductorID = "cnID"
    /// Boolean value indicating there should be no delay between tracks
    case gaplessPlayback = "pgap"
    /// The iTunes-store genre identifier
    case genreID = "geID"
    /// The iTunes-store account type
    case iTunesAccountType = "akID"
    /// The total movements in a work
    case movementCount = "\u{00A9}mvc"
    /// The index of a specific movement within a work
    case movementNumber = "\u{00A9}mvi"
    /// The media kind value for the media
    case mediaKind = "stik"
    /// Boolean value indicating whether or not the track is a podcast
    case podcast = "pcst"
    /// The iTunes playlist identifier
    case playlistID = "plID"
    /// Rating indicator for `clean`, `explicit`, or `none`
    case rating = "rtng"
    /// Boolean value indicating whether Work and Movement data should be displayed
    case showWorkAndMovement = "shwm"
    /// The episode number of a television episode
    case tvEpisodeNumber = "tves"
    /// The season number of a television show
    case tvSeason = "tvsn"
    /// Year when media was recorded
    case year = "yrrc"
    
    func parse(size: Int, payload: Data) throws -> Atom {
        return try IntegerMetadataAtom(identifier: self.rawValue,
                                       size: size,
                                       payload: payload)
    }
}

/// Metadata atom identifiers associated with atoms containing string content
///
/// "String content", for our purposes, may also include:
/// - String arrays: Content is stored as strings with components separated by a semi-colon character
/// - Date values: Content is stored as ISO-8601-compliant strings, if the date can be formatted as such (to ensure proper storage, dates should be formatted using ISO-8601 standards)
/// - Web urls
enum StringMetadataIdentifier: String, CaseIterable {
    /// Acknowledgments
    case acknowledgment = "\u{00A9}cak"
    /// Album Title
    case album = "\u{00A9}alb"
    /// Album Artist or Band
    case albumArtist = "aART"
    /// Sort by album artist
    case albumArtistSort = "soaa"
    /// Sort by album
    case albumSort = "soal"
    /// Name of arranger
    case arranger = "\u{00A9}arg"
    /// Keywords for arranger
    case arrangerKeywords = "\u{00A9}ark"
    /// The art director of the movie
    case artDirector = "\u{00A9}ard"
    /// Name of primary artist (often used for author in audiobooks)
    case artist = "\u{00A9}ART"
    /// Keywords of main artist and performer
    case artistKeywords = "\u{00A9}prk"
    /// Sort by artist
    case artistSort = "soar"
    /// URL of main artist and performer
    case artistUrl = "\u{00A9}prl"
    /// iTunes podcast category
    case category = "catg"
    /// Comments
    case comment = "\u{00A9}cmt"
    /// Name of composer (often used for narrator in audiobooks)
    case composer = "\u{00A9}com"
    /// Keywords for composer
    case composerKeywords = "\u{00A9}cok"
    /// Sort by composer
    case composerSort = "soco"
    /// Name of conductor
    case conductor = "\u{00A9}con"
    /// copyright etc.
    case copyright = "cprt"
    /// Copyright statement
    case copyrightStatement = "\u{00A9}cpy"
    /// User-defined genre
    case customGenre = "\u{00A9}gen"
    /// Description (short)
    case description = "\u{00A9}des"
    /// Name of movie’s director
    case director = "\u{00A9}dir"
    /// Edit dates and descriptions
    case editDateAndDescription1 = "\u{00A9}ed1"
    /// Edit dates and descriptions
    case editDateAndDescription2 = "\u{00A9}ed2"
    /// Edit dates and descriptions
    case editDateAndDescription3 = "\u{00A9}ed3"
    /// Edit dates and descriptions
    case editDateAndDescription4 = "\u{00A9}ed4"
    /// Edit dates and descriptions
    case editDateAndDescription5 = "\u{00A9}ed5"
    /// Edit dates and descriptions
    case editDateAndDescription6 = "\u{00A9}ed6"
    /// Edit dates and descriptions
    case editDateAndDescription7 = "\u{00A9}ed7"
    /// Edit dates and descriptions
    case editDateAndDescription8 = "\u{00A9}ed8"
    /// Edit dates and descriptions
    case editDateAndDescription9 = "\u{00A9}ed9"
    /// Encoder
    case encodedBy = "\u{00A9}enc"
    /// Encoding library or app
    case encodingTool = "\u{00A9}too"
    /// Executive producer of the movie
    case executiveProducer = "\u{00A9}xpd"
    /// Indication of movie format (computer-generated, digitized, and so on)
    case format = "\u{00A9}fmt"
    /// Grouping, often used instead of `Work` for multi-part compositions
    case grouping = "\u{00A9}grp"
    /// Information about the movie
    case information = "\u{00A9}inf"
    /// ISRC code
    case isrc = "\u{00A9}isr"
    /// The iTunes store account
    case iTunesAccount = "apID"
    /// iTunes podcast keywords
    case keywords = "keyw"
    /// Name of record label
    case label = "\u{00A9}lab"
    /// URL of record label
    case labelUrl = "\u{00A9}lal"
    /// Liner notes
    case linerNotes = "\u{00A9}lnt"
    /// Long desccription
    case longDescription = "ldes"
    /// Lyrics
    case lyrics = "\u{00A9}lyr"
    /// Lyricist
    case lyricist = "\u{00A9}aut"
    /// Movement name
    case movementName = "\u{00A9}mvn"
    /// Narrator (as listed by Audible in audiobooks)
    case narrator = "\u{00A9}nrt"
    /// Original artist
    case originalArtist = "\u{00A9}ope"
    /// Owner
    case owner = "ownr"
    /// Names of performers
    case performers = "\u{00A9}prf"
    /// Podcast ID
    case podcastID = "egid"
    /// Podcast URL
    case podcastUrl = "purl"
    /// Media genre
    case predefinedGenre = "genr"
    /// Name of producer
    case producer = "\u{00A9}prd"
    /// Keywords for producer
    case producerKeywords = "\u{00A9}pdk"
    /// Media publisher (often used in place of recordCompany or label)
    case publisher = "\u{00A9}pub"
    /// Purchase Data
    case purchaseDate = "purd"
    /// Name of file creator or maker
    case recordCompany = "\u{00A9}mak"
    /// URL of file creator or maker
    case recordCompanyUrl = "\u{00A9}mal"
    /// Date the movie content was created
    case recordingDate = "\u{00A9}day"
    /// Recording copyright statement, aka phonogram rights. Normally preceded by the symbol (P) ( P in a circle)
    case recordingCopyright = "\u{00A9}phg"
    /// Release date
    case releaseDate = "rldt"
    /// Special hardware and software requirements
    case requirements = "\u{00A9}req"
    /// iTunes seller ID
    case sellerID = "xid "
    /// Sound engineer of track
    case soundEngineer = "\u{00A9}sne"
    /// Name and version number of the software (or hardware) that generated this movie
    case softwareVersion = "\u{00A9}swr"
    /// Featured soloist
    case soloist = "\u{00A9}sol"
    /// Song description
    case songDescription = "desc"
    /// Name of songwriter
    case songwriter = "\u{00A9}swf"
    /// Keywords for songwriter
    case songwriterKeywords = "\u{00A9}swk"
    /// Credits for those who provided movie source content
    case sourceCredit = "\u{00A9}src"
    /// Subtitle of content
    case subtitle = "\u{00A9}snm"
    /// Subtitle keywords of the content
    case subtitleKeywords = "\u{00A9}snk"
    /// Title of the content
    case title = "\u{00A9}nam"
    /// Title keywords of the content
    case titleKeywords = "\u{00A9}nak"
    /// Sort by title
    case titleSort = "sonm"
    /// Thanks
    case thanks = "\u{00A9}thx"
    /// Track subtitle
    case trackSubtitle = "\u{00A9}st3"
    /// TV Episode title
    case tvEpisodeTitle = "tven"
    /// TV Network
    case tvNetwork = "tvnn"
    /// TV Show
    case tvShow = "tvsh"
    /// TV Show description
    case tvShowDescription = "sdes"
    /// Sort by TV Show
    case tvShowSort = "sosn"
    /// Website
    case website = "\u{00A9}url"
    /// Work name
    case workName = "\u{00A9}wrk"
    /// Name of movie’s writer
    case writer = "\u{00A9}wrt"
    
    func parse(size: Int, payload: Data) throws -> Atom {
        return try StringMetadataAtom(identifier: self.rawValue,
                                      size: size,
                                      payload: payload)
    }
}
