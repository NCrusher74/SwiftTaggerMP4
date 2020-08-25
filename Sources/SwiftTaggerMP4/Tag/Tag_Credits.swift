//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/20/20.
//

import Foundation
import SwiftMp4MetadataParser

@available(OSX 10.13, *)
extension Tag {
    // MARK: Performer and Involved Person Credits
    public var involvementCreditsList: [InvolvedPersonCredits: [String]] {
        get {
            return credits.involvementList
        }
        set {
            credits.involvementList = newValue
        }
    }
    
    public var performanceCreditsList: [MusicianAndPerformerCredits: [String]] {
        get {
            return credits.performanceList
        }
        set {
            credits.performanceList = newValue
        }
    }
    
    public mutating func removeInvolvementCredit(_ role: InvolvedPersonCredits) {
        self.involvementCreditsList[role] = nil
        switch role {
            case .artDirection: self.artDirector = nil
            case .arranger: self.arranger = nil
            case .composer: self.composer = nil
            case .conductor: self.conductor = nil
            case .director: self.director = nil
            case .executiveProducer: self.executiveProducer = nil
            case .lyricist: self.lyricist = nil
            case .producer: self.producer = nil
            case .publisher: self.publisher = nil
            case .songwriter: self.songwriter = nil
            case .soundEngineer: self.soundEngineer = nil
            case .writer: self.writer = nil
            default:
                self[role.rawValue] = nil
        }
    }
    
    public mutating func clearInvolvementCreditList() {
        self.involvementCreditsList = [:]
        for credit in InvolvedPersonCredits.allCases {
            removeInvolvementCredit(credit)
        }
    }
    
    public mutating func addInvolvementCredit(_ role: InvolvedPersonCredits, person: String) {
        // see if role exists and doesn't contain the person
        if let existingCredit = involvementCreditsList[role],
            !existingCredit.contains(person) {
            var newCredit = existingCredit
            newCredit.append(person)
            involvementCreditsList[role] = newCredit
        } else {
            involvementCreditsList[role] = [person]
        }
        
        switch role {
            case .artDirection:
                if let string = self.artDirector {
                    let newString = "\(string);\(person)"
                    self.artDirector = newString
                } else {
                    self.artDirector = person
            }
            case .arranger:
                if let string = self.arranger {
                    let newString = "\(string);\(person)"
                    self.arranger = newString
                } else {
                    self.arranger = person
            }
            case .composer:
                if let string = self.composer {
                    let newString = "\(string);\(person)"
                    self.composer = newString
                } else {
                    self.composer = person
            }
            case .conductor:
                if let string = self.conductor {
                    let newString = "\(string);\(person)"
                    self.conductor = newString
                } else {
                    self.conductor = person
            }
            case .director:
                if let string = self.director {
                    let newString = "\(string);\(person)"
                    self.director = newString
                } else {
                    self.director = person
            }
            case .executiveProducer:
                if let string = self.executiveProducer {
                    let newString = "\(string);\(person)"
                    self.executiveProducer = newString
                } else {
                    self.executiveProducer = person
            }
            case .lyricist:
                if let string = self.lyricist {
                    let newString = "\(string);\(person)"
                    self.lyricist = newString
                } else {
                    self.lyricist = person
            }
            case .producer:
                if let string = self.producer {
                    let newString = "\(string);\(person)"
                    self.producer = newString
                } else {
                    self.producer = person
            }
            case .publisher:
                if let string = self.publisher {
                    let newString = "\(string);\(person)"
                    self.publisher = newString
                } else {
                    self.publisher = person
            }
            case .songwriter:
                if let string = self.songwriter {
                    let newString = "\(string);\(person)"
                    self.songwriter = newString
                } else {
                    self.songwriter = person
            }
            case .soundEngineer:
                if let string = self.soundEngineer {
                    let newString = "\(string);\(person)"
                    self.soundEngineer = newString
                } else {
                    self.soundEngineer = person
            }
            case .writer:
                if let string = self.writer {
                    let newString = "\(string);\(person)"
                    self.writer = newString
                } else {
                    self.writer = person
            }
            default:
                if let string = self[role.rawValue] {
                    let newString = "\(string);\(person)"
                    self[role.rawValue] = newString
                } else {
                    self[role.rawValue] = person
            }
        }
    }

    public mutating func removePerformanceCredit(_ role: MusicianAndPerformerCredits) {
        self.performanceCreditsList[role] = nil
        switch role {
            case .artist: self.artist = nil
            case .performer: self.performers = nil
            case .soloist: self.soloist = nil
            case .narrator: self.narrator = nil
            default: self[role.rawValue] = nil
        }
    }
    
    public mutating func clearPerformanceCreditList() {
        self.performanceCreditsList = [:]
        for credit in MusicianAndPerformerCredits.allCases {
            removePerformanceCredit(credit)
        }
    }
    
    public mutating func addPerformanceCredit(_ role: MusicianAndPerformerCredits, person: String) {
        // see if role exists and doesn't contain the person
        if var existingCredit = performanceCreditsList[role],
            !existingCredit.contains(person) {
            existingCredit.append(person)
            self.performanceCreditsList[role] = existingCredit
        } else {
            self.performanceCreditsList[role] = [person]
        }
        switch role {
            case .artist:
                if let string = self.artist {
                    let newString = "\(string);\(person)"
                    self.artist = newString
                } else {
                    self.artist = person
            }
            case .narrator:
                if let string = self.narrator {
                    let newString = "\(string);\(person)"
                    self.narrator = newString
                } else {
                    self.narrator = person
            }
            case .soloist:
                if let string = self.soloist {
                    let newString = "\(string);\(person)"
                    self.soloist = newString
                } else {
                    self.soloist = person
            }
            case .performer:
                if var array = self.performers, !array.contains(person) {
                    array.append(person)
                    self.performers = array
                } else {
                    self.performers = [person]
            }
            default:
                if let string = self[role.rawValue] {
                    let newString = "\(string);\(person)"
                    self[role.rawValue] = newString
                } else {
                    self[role.rawValue] = person
            }
        }
    }
}
