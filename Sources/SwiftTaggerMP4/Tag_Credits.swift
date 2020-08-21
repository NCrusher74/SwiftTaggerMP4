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
    public var artDirector: String? {
        get {
            do {
                return try parser.get(.artDirector)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artDirector.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.artDirector,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artDirector.rawValue)")
                }
                if var creditsArray = self.involvedPersonCreditsList[.artDirection] {
                    creditsArray.append(new)
                    self.involvedPersonCreditsList[.artDirection] = creditsArray
                } else {
                    self.involvedPersonCreditsList[.artDirection] = [new]
                }
            } else {
                do {
                    try parser.set(.artDirector,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artDirector.rawValue)")
                }
                self.involvedPersonCreditsList[.artDirection] = nil
            }
        }
    }
    
    public var director: String? {
        get {
            do {
                return try parser.get(.director)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.director.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.director,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.director.rawValue)")
                }
                if var creditsArray = self.involvedPersonCreditsList[.director] {
                    creditsArray.append(new)
                    self.involvedPersonCreditsList[.director] = creditsArray
                } else {
                    self.involvedPersonCreditsList[.director] = [new]
                }
            } else {
                do {
                    try parser.set(.director,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.director.rawValue)")
                }
                self.involvedPersonCreditsList[.director] = nil
            }
        }
    }
    
    public var executiveProducer: String? {
        get {
            do {
                return try parser.get(.executiveProducer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.executiveProducer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.executiveProducer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.executiveProducer.rawValue)")
                }
                if var creditsArray = self.involvedPersonCreditsList[.executiveProducer] {
                    creditsArray.append(new)
                    self.involvedPersonCreditsList[.executiveProducer] = creditsArray
                } else {
                    self.involvedPersonCreditsList[.executiveProducer] = [new]
                }
            } else {
                do {
                    try parser.set(.executiveProducer,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.executiveProducer.rawValue)")
                }
                self.involvedPersonCreditsList[.executiveProducer] = nil
            }
        }
    }
    
    public var performers: [String]? {
        get {
            do {
                if try parser.get(.performers).isEmpty {
                    return nil
                } else {
                    return try parser.get(.performers)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.performers,
                                   arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.performers.rawValue)")
                }
                if var creditsArray = self.musicianAndPerformerCreditsList[.performer] {
                    creditsArray.append(contentsOf: new)
                    self.musicianAndPerformerCreditsList[.performer] = creditsArray
                } else {
                    self.musicianAndPerformerCreditsList[.performer] = new
                }
            } else {
                do {
                    try parser.set(.performers,
                                   arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.performers.rawValue)")
                }
                self.musicianAndPerformerCreditsList[.performer] = nil
            }
        }
    }
    
    public var producer: String? {
        get {
            do {
                return try parser.get(.producer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.producer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.producer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.producer.rawValue)")
                }
                if var creditsArray = self.involvedPersonCreditsList[.producer] {
                    creditsArray.append(new)
                    self.involvedPersonCreditsList[.producer] = creditsArray
                } else {
                    self.involvedPersonCreditsList[.producer] = [new]
                }
            } else {
                do {
                    try parser.set(.producer,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.producer.rawValue)")
                }
                self.involvedPersonCreditsList[.producer] = nil
            }
        }
    }
    
    public var soloist: String? {
        get {
            do {
                return try parser.get(.soloist)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.soloist.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.soloist,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.soloist.rawValue)")
                }
                if var creditsArray = self.musicianAndPerformerCreditsList[.soloist] {
                    creditsArray.append(new)
                    self.musicianAndPerformerCreditsList[.soloist] = creditsArray
                } else {
                    self.musicianAndPerformerCreditsList[.soloist] = [new]
                }
            } else {
                do {
                    try parser.set(.soloist,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.soloist.rawValue)")
                }
                self.musicianAndPerformerCreditsList[.soloist] = nil
            }
        }
    }
    
    public var soundEngineer: String? {
        get {
            do {
                return try parser.get(.soundEngineer)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.soundEngineer.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.soundEngineer,
                                   stringValue: new,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.soundEngineer.rawValue)")
                }
                if var creditsArray = self.involvedPersonCreditsList[.soundEngineer] {
                    creditsArray.append(new)
                    self.involvedPersonCreditsList[.soundEngineer] = creditsArray
                } else {
                    self.involvedPersonCreditsList[.soundEngineer] = [new]
                }
            } else {
                do {
                    try parser.set(.soundEngineer,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.soundEngineer.rawValue)")
                }
                self.involvedPersonCreditsList[.soundEngineer] = nil
            }
        }
    }
    
    // MARK: Performer and Involved Person Credits
    public mutating func clearInvolvedPeopleList() {
        self.involvedPersonCreditsList = [:]
    }
    
    public mutating func clearInvolvedPeopleForRole(role: InvolvedPersonCredits) {
        self.involvedPersonCreditsList[role] = nil
    }
    
    public mutating func clearMusicianAndPerformerList() {
        self.musicianAndPerformerCreditsList = [:]
    }
    
    public mutating func clearPerformerCreditForRole(role: MusicianAndPerformerCredits) {
        self.musicianAndPerformerCreditsList[role] = nil
    }
    
    public mutating func addInvolvedPersonCredit(role: InvolvedPersonCredits, people: [String]) {
        if let existingCredit = self.involvedPersonCreditsList.first(where: {$0.key == role }) {
            var array = existingCredit.value
            
            for person in people {
                if !array.contains(person) {
                    array.append(person)
                }
            }
            self.involvedPersonCreditsList[role] = array
        } else {
            self.involvedPersonCreditsList[role] = people
        }
        if role == .artDirection {
            let string = people.joined(separator: ";")
            self.artDirector = string
        }
        if role == .executiveProducer {
            let string = people.joined(separator: ";")
            self.executiveProducer = string
        }
        if role == .director {
            let string = people.joined(separator: ";")
            self.director = string
        }
        if role == .producer {
            let string = people.joined(separator: ";")
            self.producer = string
        }
        if role == .soundEngineer {
            let string = people.joined(separator: ";")
            self.soundEngineer = string
        }
    }

    public mutating func addMusicianOrPerformerCredit(role: MusicianAndPerformerCredits, people: [String]) {
        if let existingCredit = self.musicianAndPerformerCreditsList.first(where: {$0.key == role }) {
            var array = existingCredit.value
            
            for person in people {
                if !array.contains(person) {
                    array.append(person)
                }
            }
            self.musicianAndPerformerCreditsList[role] = array
        } else {
            self.musicianAndPerformerCreditsList[role] = people
        }
        if role == .performer {
            self.performers = people
        }
        if role == .soloist {
            let string = people.joined(separator: ";")
            self.soloist = string
        }
    }

    public var musicianAndPerformerCreditsList: [MusicianAndPerformerCredits : [String]] {
        get {
            var credits = [MusicianAndPerformerCredits : [String]]()
            if let soloist = self.soloist {
                credits[.soloist] = [soloist]
            }
            if let performers = self.performers {
                credits[.performer] = performers
            }
            do {
                for credit in MusicianAndPerformerCredits.allCases {
                    if let freeformCredit = try getFreeformMetadata(name: credit.rawValue) {
                        let array: [String] = freeformCredit.components(separatedBy: ";")
                        credits[credit] = array
                    }
                }
            } catch {
                print("Unable to return value from freeform metadata atom")
            }
            return credits
        }
        set {
            if let soloist = newValue.first(where: {$0.key == .soloist}) {
                let array: [String] = soloist.value
                let string: String = array.joined(separator: ";")
                self.soloist = string
            } else if let performers = newValue.first(where: {$0.key == .performer}) {
                self.performers = performers.value
            } else {
                if !newValue.isEmpty {
                    for (key, value) in newValue {
                        let keyString: String = key.rawValue
                        let valueString: String = value.joined(separator: ";")
                        do {
                            try setFreeformMetadata(name: keyString,
                                                    stringValue: valueString)
                        } catch {
                            print("Unable to create freeform metadata atom for performer credit \(keyString)")
                        }
                    }
                } else {
                    for credit in MusicianAndPerformerCredits.allCases {
                        do {
                            if try getFreeformMetadata(name: credit.rawValue) != nil {
                                try setFreeformMetadata(name: credit.rawValue, stringValue: nil)
                            }
                        } catch {
                            print("Unable to remove freeform metadata atom for performer credit \(credit.rawValue)")
                        }
                    }
                }
            }
        }
    }
    
    public var involvedPersonCreditsList: [InvolvedPersonCredits : [String]] {
        get {
            var credits = [InvolvedPersonCredits : [String]]()
            
            if let artDirector = self.artDirector {
                credits[.artDirection] = [artDirector]
            }
            if let director = self.director {
                credits[.director] = [director]
            }
            if let executiveProducer = self.executiveProducer {
                credits[.executiveProducer] = [executiveProducer]
            }
            if let producer = self.producer {
                credits[.producer] = [producer]
            }
            if let soundEngineer = self.soundEngineer {
                credits[.soundEngineer] = [soundEngineer]
            }
            
            do {
                for credit in InvolvedPersonCredits.allCases {
                    if let freeformCredit = try getFreeformMetadata(name: credit.rawValue) {
                        let array: [String] = freeformCredit.components(separatedBy: ";")
                        credits[credit] = array
                    }
                }
            } catch {
                print("Unable to return value from freeform metadata atom")
            }
            
            return credits
        }
        set {
            if let director = newValue.first(where: {$0.key == .director}) {
                let array: [String] = director.value
                let string: String = array.joined(separator: ";")
                self.director = string
            } else if let artDirector = newValue.first(where: {$0.key == .artDirection}) {
                let array: [String] = artDirector.value
                let string: String = array.joined(separator: ";")
                self.artDirector = string
            } else if let executiveProducer = newValue.first(where: {$0.key == .executiveProducer}) {
                let array: [String] = executiveProducer.value
                let string: String = array.joined(separator: ";")
                self.executiveProducer = string
            } else if let producer = newValue.first(where: {$0.key == .producer}) {
                let array: [String] = producer.value
                let string: String = array.joined(separator: ";")
                self.producer = string
            } else if let soundEngineer = newValue.first(where: {$0.key == .soundEngineer}) {
                let array: [String] = soundEngineer.value
                let string: String = array.joined(separator: ";")
                self.soundEngineer = string
            } else {
                if !newValue.isEmpty {
                    for (key, value) in newValue {
                        let keyString: String = key.rawValue
                        let valueString: String = value.joined(separator: ";")
                        
                        do {
                            try setFreeformMetadata(name: keyString,
                                                    stringValue: valueString)
                        } catch {
                            print("Unable to create freeform metadata atom for involved person credit \(keyString)")
                        }
                    }
                } else {
                    for credit in InvolvedPersonCredits.allCases {
                        do {
                            if try getFreeformMetadata(name: credit.rawValue) != nil {
                                try setFreeformMetadata(name: credit.rawValue, stringValue: nil)
                            }
                        } catch {
                            print("Unable to remove freeform metadata atom for involved person credit \(credit.rawValue)")
                        }
                    }
                }
            }
        }
    }
}
