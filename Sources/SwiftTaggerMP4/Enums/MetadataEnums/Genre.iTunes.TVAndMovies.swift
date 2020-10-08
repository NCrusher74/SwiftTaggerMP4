//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/7/20.
//

import Foundation
extension Genre {
    public enum TVShows: Int, CaseIterable {
        case tvShows = 32
        case comedy = 4000
        case drama = 4001
        case animation = 4002
        case actionAndAdventure = 4003
        case classics = 4004
        case kidsAndFamily = 4005
        case nonfiction = 4006
        case realityTV = 4007
        case sciFiAndFantasy = 4008
        case sports = 4009
        case teens = 4010
        case latinoTV = 4011
        
        var stringValue: String {
            switch self {
                case .tvShows: return "TV Shows"
                case .comedy: return "TV Shows|Comedy"
                case .drama: return "TV Shows|Drama"
                case .animation: return "TV Shows|Animation"
                case .actionAndAdventure: return "TV Shows|Action and Adventure"
                case .classics: return "TV Shows|Classics"
                case .kidsAndFamily: return "TV Shows|Kids and Family"
                case .nonfiction: return "TV Shows|Nonfiction"
                case .realityTV: return "TV Shows|Reality TV"
                case .sciFiAndFantasy: return "TV Shows|SciFi and Fantasy"
                case .sports: return "TV Shows|Sports"
                case .teens: return "TV Shows|Teens"
                case .latinoTV: return "TV Shows|Latino TV"
            }
        }
    }
    public enum Movies: Int, CaseIterable {
        case movies = 33
        case actionAndAdventure = 4401
        case anime = 4402
        case classics = 4403
        case comedy = 4404
        case documentary = 4405
        case drama = 4406
        case foreign = 4407
        case horror = 4408
        case independent = 4409
        case kidsAndFamily = 4410
        case musicals = 4411
        case romance = 4412
        case sciFiAndFantasy = 4413
        case shortFilms = 4414
        case specialInterest = 4415
        case thriller = 4416
        case sports = 4417
        case western = 4418
        case urban = 4419
        case holiday = 4420
        case madeforTV = 4421
        case concertFilms = 4422
        case musicDocumentaries = 4423
        case musicFeatureFilms = 4424
        case japaneseCinema = 4425
        case jidaigeki = 4426
        case tokusatsu = 4427
        case koreanCinema = 4428
        case russian = 4429
        case turkish = 4430
        case bollywood = 4431
        case regionalIndian = 4432
        case middleEastern = 4433
        case african = 4434
        
        var stringValue: String {
            switch self {
                case .movies: return "Movies"
                case .actionAndAdventure: return "Movies|Action and Adventure"
                case .anime: return "Movies|Anime"
                case .classics: return "Movies|Classics"
                case .comedy: return "Movies|Comedy"
                case .documentary: return "Movies|Documentary"
                case .drama: return "Movies|Drama"
                case .foreign: return "Movies|Foreign"
                case .horror: return "Movies|Horror"
                case .independent: return "Movies|Independent"
                case .kidsAndFamily: return "Movies|Kids and Family"
                case .musicals: return "Movies|Musicals"
                case .romance: return "Movies|Romance"
                case .sciFiAndFantasy: return "Movies|SciFi and Fantasy"
                case .shortFilms: return "Movies|Short Films"
                case .specialInterest: return "Movies|Special Interest"
                case .thriller: return "Movies|Thriller"
                case .sports: return "Movies|Sports"
                case .western: return "Movies|Western"
                case .urban: return "Movies|Urban"
                case .holiday: return "Movies|Holiday"
                case .madeforTV: return "Movies|Made for TV"
                case .concertFilms: return "Movies|Concert Films"
                case .musicDocumentaries: return "Movies|Music Documentaries"
                case .musicFeatureFilms: return "Movies|Music Feature Films"
                case .japaneseCinema: return "Movies|Japanese Cinema"
                case .jidaigeki: return "Movies|Jidaigeki"
                case .tokusatsu: return "Movies|Tokusatsu"
                case .koreanCinema: return "Movies|Korean Cinema"
                case .russian: return "Movies|Russian"
                case .turkish: return "Movies|Turkish"
                case .bollywood: return "Movies|Bollywood"
                case .regionalIndian: return "Movies|Regional Indian"
                case .middleEastern: return "Movies|Middle Eastern"
                case .african: return "Movies|African"
            }
        }
    }
}
