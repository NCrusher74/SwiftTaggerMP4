//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/7/20.
//

import Foundation
extension Genre {
    public enum AppStore: CaseIterable {
        
        public static var allCases: [AppStore] {
            var cases: [AppStore] = [.appStore, .books, .business, .catalogs, .developerTools, .education, .entertainment, .finance, .foodandDrink, .graphicsAndDesign, .healthAndFitness, .lifestyle, .medical, .music, .music, .navigation, .news, .photoAndVideo, .productivity, .reference, .shopping, .socialNetworking, .sports, .travel, .utilities, .weather]
            cases.append(contentsOf: Games.allCases.map({ AppStore.games($0)}))
            cases.append(contentsOf: MagazinesAndNewspapers.allCases.map({ AppStore.magazinesAndNewsPaperss($0)}))
            cases.append(contentsOf: Stickers.allCases.map({ AppStore.stickers($0)}))
            return cases
        }
        
        case appStore
        case business
        case weather
        case utilities
        case travel
        case sports
        case socialNetworking
        case reference
        case productivity
        case photoAndVideo
        case news
        case navigation
        case music
        case lifestyle
        case healthAndFitness
        case games(Games)
        public enum Games: Int, CaseIterable {
            case games = 6014
            case action = 7001
            case adventure = 7002
            case casual = 7003
            case board = 7004
            case card = 7005
            case casino = 7006
            case dice = 7007
            case educational = 7008
            case family = 7009
            case music = 7011
            case puzzle = 7012
            case racing = 7013
            case rolePlaying = 7014
            case simulation = 7015
            case sports = 7016
            case strategy = 7017
            case trivia = 7018
            case word = 7019

            var stringValue: String {
                switch self {
                    case .games: return "AppStore|Games"
                    case .action: return "AppStore|Games|Action"
                    case .adventure: return "AppStore|Games|Adventure"
                    case .casual: return "AppStore|Games|Casual"
                    case .board: return "AppStore|Games|Board"
                    case .card: return "AppStore|Games|Card"
                    case .casino: return "AppStore|Games|Casino"
                    case .dice: return "AppStore|Games|Dice"
                    case .educational: return "AppStore|Games|Educational"
                    case .family: return "AppStore|Games|Family"
                    case .music: return "AppStore|Games|Music"
                    case .puzzle: return "AppStore|Games|Puzzle"
                    case .racing: return "AppStore|Games|Racing"
                    case .rolePlaying: return "AppStore|Games|Role Playing"
                    case .simulation: return "AppStore|Games|Simulation"
                    case .sports: return "AppStore|Games|Sports"
                    case .strategy: return "AppStore|Games|Strategy"
                    case .trivia: return "AppStore|Games|Trivia"
                    case .word: return "AppStore|Games|Word"
                }
            }
        }
        case finance
        case entertainment
        case education
        case books
        case medical
        case magazinesAndNewsPaperss(MagazinesAndNewspapers)
        public enum MagazinesAndNewspapers: Int, CaseIterable {
            case magazinesAndNewspapers = 6021
            case newsAndPolitics = 13001
            case fashionAndStyle = 13002
            case homeAndGarden = 13003
            case outdoorsAndNature = 13004
            case sportsAndLeisure = 13005
            case automotive = 13006
            case artsAndPhotography = 13007
            case bridesAndWeddings = 13008
            case businessAndInvesting = 13009
            case childrensMagazines = 13010
            case computersAndInternet = 13011
            case cookingFoodAndDrink = 13012
            case craftsAndHobbies = 13013
            case electronicsAndAudio = 13014
            case entertainment = 13015
            case healthMindAndBody = 13017
            case history = 13018
            case literaryMagazinesAndJournals = 13019
            case mensInterest = 13020
            case moviesAndMusic = 13021
            case parentingAndFamily = 13023
            case pets = 13024
            case professionalAndTrade = 13025
            case regionalNews = 13026
            case science = 13027
            case teens = 13028
            case travelAndRegional = 13029
            case womensInterest = 13030

            var stringValue: String {
                switch self {
                    case .magazinesAndNewspapers: return "AppStore|Magazines and Newspapers"
                    case .newsAndPolitics: return "AppStore|Magazines and Newspapers|News and Politics"
                    case .fashionAndStyle: return "AppStore|Magazines and Newspapers|Fashion and Style"
                    case .homeAndGarden: return "AppStore|Magazines and Newspapers|Home and Garden"
                    case .outdoorsAndNature: return "AppStore|Magazines and Newspapers|Outdoors and Nature"
                    case .sportsAndLeisure: return "AppStore|Magazines and Newspapers|Sports and Leisure"
                    case .automotive: return "AppStore|Magazines and Newspapers|Automotive"
                    case .artsAndPhotography: return "AppStore|Magazines and Newspapers|Arts and Photography"
                    case .bridesAndWeddings: return "AppStore|Magazines and Newspapers|Brides and Weddings"
                    case .businessAndInvesting: return "AppStore|Magazines and Newspapers|Business and Investing"
                    case .childrensMagazines: return "AppStore|Magazines and Newspapers|Childrens Magazines"
                    case .computersAndInternet: return "AppStore|Magazines and Newspapers|Computers and Internet"
                    case .cookingFoodAndDrink: return "AppStore|Magazines and Newspapers|Cooking Food and Drink"
                    case .craftsAndHobbies: return "AppStore|Magazines and Newspapers|Crafts and Hobbies"
                    case .electronicsAndAudio: return "AppStore|Magazines and Newspapers|Electronics and Audio"
                    case .entertainment: return "AppStore|Magazines and Newspapers|Entertainment"
                    case .healthMindAndBody: return "AppStore|Magazines and Newspapers|Health Mind and Body"
                    case .history: return "AppStore|Magazines and Newspapers|History"
                    case .literaryMagazinesAndJournals: return "AppStore|Magazines and Newspapers|Literary Magazines and Journals"
                    case .mensInterest: return "AppStore|Magazines and Newspapers|Mens Interest"
                    case .moviesAndMusic: return "AppStore|Magazines and Newspapers|Movies and Music"
                    case .parentingAndFamily: return "AppStore|Magazines and Newspapers|Parenting and Family"
                    case .pets: return "AppStore|Magazines and Newspapers|Pets"
                    case .professionalAndTrade: return "AppStore|Magazines and Newspapers|Professional and Trade"
                    case .regionalNews: return "AppStore|Magazines and Newspapers|Regional News"
                    case .science: return "AppStore|Magazines and Newspapers|Science"
                    case .teens: return "AppStore|Magazines and Newspapers|Teens"
                    case .travelAndRegional: return "AppStore|Magazines and Newspapers|Travel and Regional"
                    case .womensInterest: return "AppStore|Magazines and Newspapers|Womens Interest"
                }
            }
        }
        case catalogs
        case foodandDrink
        case shopping
        case stickers(Stickers)
        public enum Stickers: Int, CaseIterable {
            case stickers = 6025
            case emojiAndExpressions = 16001
            case animalsAndNature = 16003
            case art = 16005
            case celebrations = 16006
            case celebrities = 16007
            case comicsAndCartoons = 16008
            case eatingAndDrinking = 16009
            case gaming = 16010
            case moviesAndTV = 16014
            case music = 16015
            case people = 16017
            case placesAndObjects = 16019
            case sportsAndActivities = 16021
            case kidsAndFamily = 16025
            case fashion = 16026
            
            var stringValue: String {
                switch self {
                    case .stickers: return "AppStore|Stickers"
                    case .emojiAndExpressions: return "AppStore|Stickers|Emoji and Expressions"
                    case .animalsAndNature: return "AppStore|Stickers|Animals and Nature"
                    case .art: return "AppStore|Stickers|Art"
                    case .celebrations: return "AppStore|Stickers|Celebrations"
                    case .celebrities: return "AppStore|Stickers|Celebrities"
                    case .comicsAndCartoons: return "AppStore|Stickers|Comics and Cartoons"
                    case .eatingAndDrinking: return "AppStore|Stickers|Eating and Drinking"
                    case .gaming: return "AppStore|Stickers|Gaming"
                    case .moviesAndTV: return "AppStore|Stickers|Movies and TV"
                    case .music: return "AppStore|Stickers|Music"
                    case .people: return "AppStore|Stickers|People"
                    case .placesAndObjects: return "AppStore|Stickers|Places and Objects"
                    case .sportsAndActivities: return "AppStore|Stickers|Sports and Activities"
                    case .kidsAndFamily: return "AppStore|Stickers|Kids and Family"
                    case .fashion: return "AppStore|Stickers|Fashion"
                }
            }
        }
        case developerTools
        case graphicsAndDesign
        
        var genreID: Int {
            switch self {
                case .appStore: return 36
                case .business: return 6000
                case .weather: return 6001
                case .utilities: return 6002
                case .travel: return 6003
                case .sports: return 6004
                case .socialNetworking: return 6005
                case .reference: return 6006
                case .productivity: return 6007
                case .photoAndVideo: return 6008
                case .news: return 6009
                case .navigation: return 6010
                case .music: return 6011
                case .lifestyle: return 6012
                case .healthAndFitness: return 6013
                case .games(let subtype): return subtype.rawValue
                case .finance: return 6015
                case .entertainment: return 6016
                case .education: return 6017
                case .books: return 6018
                case .medical: return 6020
                case .magazinesAndNewsPaperss(let subtype): return subtype.rawValue
                case .catalogs: return 6022
                case .foodandDrink: return 6023
                case .shopping: return 6024
                case .stickers(let subtype): return subtype.rawValue
                case .developerTools: return 6026
                case .graphicsAndDesign: return 6027
            }
        }
        
        var stringValue: String {
            switch self {
                case .appStore: return "AppStore|"
                case .business: return "AppStore|Business"
                case .weather: return "AppStore|Weather"
                case .utilities: return "AppStore|Utilities"
                case .travel: return "AppStore|Travel"
                case .sports: return "AppStore|Sports"
                case .socialNetworking: return "AppStore|Social Networking"
                case .reference: return "AppStore|Reference"
                case .productivity: return "AppStore|Productivity"
                case .photoAndVideo: return "AppStore|Photo and Video"
                case .news: return "AppStore|News"
                case .navigation: return "AppStore|Navigation"
                case .music: return "AppStore|Music"
                case .lifestyle: return "AppStore|Lifestyle"
                case .healthAndFitness: return "AppStore|Health and Fitness"
                case .games(let subtype): return subtype.stringValue
                case .finance: return "AppStore|Finance"
                case .entertainment: return "AppStore|Entertainment"
                case .education: return "AppStore|Education"
                case .books: return "AppStore|Books"
                case .medical: return "AppStore|Medical"
                case .magazinesAndNewsPaperss(let subtype): return subtype.stringValue
                case .catalogs: return "AppStore|Catalogs"
                case .foodandDrink: return "AppStore|Food and Drink"
                case .shopping: return "AppStore|Shopping"
                case .stickers(let subtype): return subtype.stringValue
                case .developerTools: return "AppStore|Developer Tools"
                case .graphicsAndDesign: return "AppStore|Graphics and Design"
            }
        }
    }
    
    public enum MacAppStore: CaseIterable {
        case macAppStore
        case business
        case developerTools
        case education
        case entertainment
        case finance
        case healthAndFitness
        case lifestyle
        case medical
        case music
        case news
        case photography
        case productivity
        case reference
        case socialNetworking
        case sports
        case travel
        case utilities
        case video
        case weather
        case graphicsAndDesign

        public static var allCases: [MacAppStore] {
            var cases: [MacAppStore] = [.business, .developerTools, .education, .entertainment, .finance, .graphicsAndDesign, .healthAndFitness, .lifestyle, .macAppStore, .medical, .music, .news, .photography, .productivity, .reference, .socialNetworking, .sports, .travel, .utilities, .video, .weather]
            cases.append(contentsOf: Games.allCases.map({ MacAppStore.games($0)}))
            return cases
        }
        var genreID: Int {
            switch self {
                case .macAppStore: return 39
                case .business: return 12001
                case .developerTools: return 12001
                case .education: return 12003
                case .entertainment: return 12004
                case .finance: return 12005
                case .healthAndFitness: return 12007
                case .lifestyle: return 12008
                case .medical: return 12010
                case .music: return 12011
                case .news: return 12012
                case .photography: return 12013
                case .productivity: return 12014
                case .reference: return 12015
                case .socialNetworking: return 12016
                case .sports: return 12017
                case .travel: return 12018
                case .utilities: return 12019
                case .video: return 12020
                case .weather: return 12021
                case .graphicsAndDesign: return 12022
                case .games(let subtype): return subtype.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .macAppStore: return "MacAppStore"
                case .business: return "MacAppStore|Business"
                case .developerTools: return "MacAppStore|Developer Tools"
                case .education: return "MacAppStore|Education"
                case .entertainment: return "MacAppStore|Entertainment"
                case .finance: return "MacAppStore|Finance"
                case .healthAndFitness: return "MacAppStore|Health and Fitness"
                case .lifestyle: return "MacAppStore|Lifestyle"
                case .medical: return "MacAppStore|Medical"
                case .music: return "MacAppStore|Music"
                case .news: return "MacAppStore|News"
                case .photography: return "MacAppStore|Photography"
                case .productivity: return "MacAppStore|Productivity"
                case .reference: return "MacAppStore|Reference"
                case .socialNetworking: return "MacAppStore|Social Networking"
                case .sports: return "MacAppStore|Sports"
                case .travel: return "MacAppStore|Travel"
                case .utilities: return "MacAppStore|Utilities"
                case .video: return "MacAppStore|Video"
                case .weather: return "MacAppStore|Weather"
                case .graphicsAndDesign: return "MacAppStore|Graphics and Design"
                case .games(let subtype): return subtype.stringValue
            }
        }
        case games(Games)
        public enum Games: Int, CaseIterable {
            case games = 12006
            case action = 12201
            case adventure = 12202
            case casual = 12203
            case board = 12204
            case card = 12205
            case casino = 12206
            case dice = 12207
            case educational = 12208
            case family = 12209
            case kids = 12210
            case music = 12211
            case puzzle = 12212
            case racing = 12213
            case rolePlaying = 12214
            case simulation = 12215
            case sports = 12216
            case strategy = 12217
            case trivia = 12218
            case word = 12219
            
            var stringValue: String {
                switch self {
                    case .games: return "MacAppStore|Games|games"
                    case .action: return "MacAppStore|Games|Action"
                    case .adventure: return "MacAppStore|Games|Adventure"
                    case .casual: return "MacAppStore|Games|Casual"
                    case .board: return "MacAppStore|Games|Board"
                    case .card: return "MacAppStore|Games|Card"
                    case .casino: return "MacAppStore|Games|Casino"
                    case .dice: return "MacAppStore|Games|Dice"
                    case .educational: return "MacAppStore|Games|Educational"
                    case .family: return "MacAppStore|Games|Family"
                    case .kids: return "MacAppStore|Games|Kids"
                    case .music: return "MacAppStore|Games|Music"
                    case .puzzle: return "MacAppStore|Games|Puzzle"
                    case .racing: return "MacAppStore|Games|Racing"
                    case .rolePlaying: return "MacAppStore|Games|RolePlaying"
                    case .simulation: return "MacAppStore|Games|Simulation"
                    case .sports: return "MacAppStore|Games|Sports"
                    case .strategy: return "MacAppStore|Games|Strategy"
                    case .trivia: return "MacAppStore|Games|Trivia"
                    case .word: return "MacAppStore|Games|Word"
                }
            }
        }
    }
}
