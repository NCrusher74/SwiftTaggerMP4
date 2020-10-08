/*  GenreID
 SwiftTaggerMP4
 
 Created by Nolaine Crusher on 5/2/20.
 Copyright © 2020 Nolaine Crusher. All rights reserved.
 */

public enum Genre: CaseIterable {
    case unknown
    case iPodGames
    case music(Music)
    case podcasts(Podcasts)
    case musicVideos(MusicVideos)
    case tvShows(TVShows)
    case movies(Movies)
    case appStore(AppStore)    
    case tones(Tones)
    case books(Books)
    case macAppStore(MacAppStore)
    case textbooks(Textbooks)
    case audiobooks(Audiobooks)
    case iTunesU(ITunesU)
    
    public static var allCases: [Genre] {
        var cases: [Genre] = [.unknown, .iPodGames]
        cases.append(contentsOf: Music.allCases.map({ Genre.music($0)}))
        cases.append(contentsOf: Podcasts.allCases.map({ Genre.podcasts($0)}))
        cases.append(contentsOf: MusicVideos.allCases.map({ Genre.musicVideos($0)}))
        cases.append(contentsOf: TVShows.allCases.map({ Genre.tvShows($0)}))
        cases.append(contentsOf: Movies.allCases.map({ Genre.movies($0)}))
        cases.append(contentsOf: AppStore.allCases.map({ Genre.appStore($0)}))
        cases.append(contentsOf: Tones.allCases.map({ Genre.tones($0)}))
        cases.append(contentsOf: Books.allCases.map({ Genre.books($0)}))
        cases.append(contentsOf: MacAppStore.allCases.map({ Genre.macAppStore($0)}))
        cases.append(contentsOf: Textbooks.allCases.map({ Genre.textbooks($0)}))
        cases.append(contentsOf: Audiobooks.allCases.map({ Genre.audiobooks($0)}))
        cases.append(contentsOf: ITunesU.allCases.map({ Genre.iTunesU($0)}))
        return cases
    }
    
    var genreID: Int {
        switch self {
            case .unknown: return 0
            case .iPodGames: return 35
            case .appStore(let type): return type.genreID
            case .audiobooks(let genre): return genre.rawValue
            case .books(let genre): return genre.genreID
            case .iTunesU(let type): return type.genreID
            case .macAppStore(let type): return type.genreID
            case .movies(let genre): return genre.rawValue
            case .music(let genre): return genre.genreID
            case .musicVideos(let genre): return genre.genreID
            case .podcasts(let type): return type.genreID
            case .textbooks(let subject): return subject.genreID
            case .tones(let type): return type.genreID
            case .tvShows(let genre): return genre.rawValue
        }
    }
    
    var stringValue: String {
        switch self {
            case .unknown: return "Unknown"
            case .iPodGames: return "iPod Games"
            case .appStore(let type): return type.stringValue
            case .audiobooks(let genre): return genre.stringValue
            case .books(let genre): return genre.stringValue
            case .iTunesU(let type): return type.stringValue
            case .macAppStore(let type): return type.stringValue
            case .movies(let genre): return genre.stringValue
            case .music(let genre): return genre.stringValue
            case .musicVideos(let genre): return genre.stringValue
            case .podcasts(let type): return type.stringValue
            case .textbooks(let subject): return subject.stringValue
            case .tones(let type): return type.stringValue
            case .tvShows(let genre): return genre.stringValue
        }
    }
    
    public init(genreID: Int) {
        var mapping = [Int: Genre]()
        for genre in Genre.allCases {
            let int = genre.genreID
            mapping[int] = genre
        }
        self = mapping[genreID] ?? .unknown
    }
    
    public init(stringValue: String) {
        var mapping = [String: Genre]()
        for genre in Genre.allCases {
            let string = genre.stringValue
            mapping[string] = genre
        }
        self = mapping[stringValue] ?? .unknown
    }

}
