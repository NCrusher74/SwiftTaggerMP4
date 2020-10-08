//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/7/20.
//

import Foundation
extension Genre {
    public enum Audiobooks: Int, CaseIterable {
        case audiobooks = 50000024
        case news = 74
        case programsandPerformances = 75
        case fiction = 50000040
        case artsAndEntertainment = 50000041
        case biographiesAndMemoirs = 50000042
        case businessAndPersonalFinance = 50000043
        case kidsAndYoungAdults = 50000044
        case classics = 50000045
        case comedy = 50000046
        case dramaAndPoetry = 50000047
        case speakersAndStorytellers = 50000048
        case history = 50000049
        case languages = 50000050
        case mysteriesAndThrillers = 50000051
        case nonfiction = 50000052
        case religionAndSpirituality = 50000053
        case scienceAndNature = 50000054
        case sciFiAndFantasy = 50000055
        case selfDevelopment = 50000056
        case sportsAndOutdoors = 50000057
        case technology = 50000058
        case travelAndAdventure = 50000059
        case romance = 50000069
        case audiobooksLatino = 50000070
        case erotica = 50000092
        case lightNovels = 50000093
        
        var stringValue: String {
            switch self {
                case .audiobooks: return "Audiobooks"
                case .news: return "Audiobooks|News"
                case .programsandPerformances: return "Audiobooks|Programs and Performances"
                case .fiction: return "Audiobooks|Fiction"
                case .artsAndEntertainment: return "Audiobooks|Arts and Entertainment"
                case .biographiesAndMemoirs: return "Audiobooks|Biographies and Memoirs"
                case .businessAndPersonalFinance: return "Audiobooks|Business and Personal Finance"
                case .kidsAndYoungAdults: return "Audiobooks|Kids and Young Adults"
                case .classics: return "Audiobooks|Classics"
                case .comedy: return "Audiobooks|Comedy"
                case .dramaAndPoetry: return "Audiobooks|Drama and Poetry"
                case .speakersAndStorytellers: return "Audiobooks|Speakers and Storytellers"
                case .history: return "Audiobooks|History"
                case .languages: return "Audiobooks|Languages"
                case .mysteriesAndThrillers: return "Audiobooks|Mysteries and Thrillers"
                case .nonfiction: return "Audiobooks|Nonfiction"
                case .religionAndSpirituality: return "Audiobooks|Religion and Spirituality"
                case .scienceAndNature: return "Audiobooks|Science and Nature"
                case .sciFiAndFantasy: return "Audiobooks|SciFi and Fantasy"
                case .selfDevelopment: return "Audiobooks|Self-Development"
                case .sportsAndOutdoors: return "Audiobooks|Sports and Outdoors"
                case .technology: return "Audiobooks|Technology"
                case .travelAndAdventure: return "Audiobooks|Travel and Adventure"
                case .romance: return "Audiobooks|Romance"
                case .audiobooksLatino: return "Audiobooks|Audiobooks Latino"
                case .erotica: return "Audiobooks|Erotica"
                case .lightNovels: return "Audiobooks|Light Novels"
            }
        }
    }
}
