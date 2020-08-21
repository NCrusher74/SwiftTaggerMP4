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
                if var creditsArray = self.involvedPersonCreditsList[
                    .artDirection] {
                    if !creditsArray.contains(new) {
                        creditsArray.append(new)
                        self.involvedPersonCreditsList[.artDirection] = creditsArray
                    }
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
                if var creditsArray = self.involvedPersonCreditsList[
                    .director] {
                    if !creditsArray.contains(new) {
                        creditsArray.append(new)
                        self.involvedPersonCreditsList[.director] = creditsArray
                    }
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
                if var creditsArray = self.involvedPersonCreditsList[
                    .executiveProducer] {
                    if !creditsArray.contains(new) {
                        creditsArray.append(new)
                        self.involvedPersonCreditsList[.executiveProducer] = creditsArray
                    }
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
                if var creditsArray = self.musicianAndPerformerCreditsList[
                    .performer] {
                    if !creditsArray.contains(new) {
                        creditsArray.append(contentsOf: new)
                        self.musicianAndPerformerCreditsList[
                            .performer] = creditsArray
                    }
                } else {
                    self.musicianAndPerformerCreditsList[
                        .performer] = new
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
                if var creditsArray = self.involvedPersonCreditsList[
                    .producer] {
                    if !creditsArray.contains(new) {
                        creditsArray.append(new)
                        self.involvedPersonCreditsList[.producer] = creditsArray
                    }
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
                if var creditsArray = self.musicianAndPerformerCreditsList[
                    .soloist] {
                    if !creditsArray.contains(new) {
                        creditsArray.append(new)
                        self.musicianAndPerformerCreditsList[
                            .soloist] = creditsArray
                    }
                } else {
                    self.musicianAndPerformerCreditsList[
                        .soloist] = [new]
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
                if var creditsArray = self.involvedPersonCreditsList[
                    .soundEngineer] {
                    if !creditsArray.contains(new) {
                        creditsArray.append(new)
                        self.involvedPersonCreditsList[.soundEngineer] = creditsArray
                    }
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
    
    public mutating func addInvolvedPersonCredit(role: InvolvedPersonCredits, person: String) {

        if role == .artDirection {
            if let existingString = self.artDirector {
                let newString = "\(existingString);\(person)"
                self.artDirector = newString
            } else {
                self.artDirector = person
            }
        }
        if role == .director {
            if let existingString = self.director {
                let newString = "\(existingString);\(person)"
                self.director = newString
            } else {
                self.director = person
            }
        }

        if role == .executiveProducer {
            if let existingString = self.executiveProducer {
                let newString = "\(existingString);\(person)"
                self.executiveProducer = newString
            } else {
                self.executiveProducer = person
            }
        }

        if role == .producer {
            if let existingString = self.producer {
                let newString = "\(existingString);\(person)"
                self.producer = newString
            } else {
                self.producer = person
            }
        }

        if role == .soundEngineer {
            if let existingString = self.soundEngineer {
                let newString = "\(existingString);\(person)"
                self.soundEngineer = newString
            } else {
                self.soundEngineer = person
            }
        }

        // entry exists in dictionary, may or may not contain person
        if let existingCredit = involvedPersonCreditsList.first(where: {$0.key == role }) {
            var creditArray = existingCredit.value
            // contains person, do nothing
            if creditArray.contains(person) {
                return
            } else {
                // doesn't contain person, append array
                creditArray.append(person)
                self.involvedPersonCreditsList[role] = creditArray
            }
            // create entry
        } else {
            self.involvedPersonCreditsList[role] = [person]
        }
    }
        
    public mutating func addMusicianOrPerformerCredit(role: MusicianAndPerformerCredits, person: String) {
        
        if role == .performer {
            if var existingArray = self.performers {
                if !existingArray.contains(person) {
                    existingArray.append(person)
                    self.performers = existingArray
                } else {
                    self.performers = existingArray
                }
            } else {
                self.performers = [person]
            }
        }
        
        if role == .soloist {
            if let existingString = self.soloist {
                let newString = "\(existingString);\(person)"
                self.soloist = newString
            } else {
                self.soloist = person
            }
        }

        // entry exists in dictionary, may or may not contain person
        if let existingCredit = musicianAndPerformerCreditsList.first(where: {$0.key == role }) {
            var creditArray = existingCredit.value
            // contains person, do nothing
            if creditArray.contains(person) {
                return
            } else {
                // doesn't contain person, append array
                creditArray.append(person)
                self.musicianAndPerformerCreditsList[role] = creditArray
            }
            // create entry
        } else {
            self.musicianAndPerformerCreditsList[role] = [person]
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
                var itemIdentifiers = [String]()
                for item in try parser.listMetadataTags() {
                    itemIdentifiers.append(item.identifier)
                }
                let filteredIdentifiers = itemIdentifiers.filter({MusicianAndPerformerCredits(rawValue: $0) != nil })
                for item in filteredIdentifiers {
                    if let credit = MusicianAndPerformerCredits(rawValue: item) {
                        if let freeformCredit = try getFreeformMetadata(name: item) {
                            let array: [String] = freeformCredit.components(separatedBy: ";")
                            credits[credit] = array
                        }
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
            }
            if let performers = newValue.first(where: {$0.key == .performer}) {
                self.performers = performers.value
            }
            if !newValue.isEmpty {
                for (key, value) in newValue {
                    let dupeKeys: [MusicianAndPerformerCredits] = [.performer, .soloist]
                    if !dupeKeys.contains(key) {
                        let keyString: String = key.rawValue
                        let valueString: String = value.joined(separator: ";")
                        do {
                            try setFreeformMetadata(name: keyString,
                                                    stringValue: valueString)
                        } catch {
                            print("Unable to create freeform metadata atom for performer credit \(keyString)")
                        }
                    }
                }
            } else {
                do {
                    for item in try parser.listMetadataTags() {
                        if MusicianAndPerformerCredits(rawValue: item.identifier) != nil {
                            try setFreeformMetadata(name: item.identifier, stringValue: nil)
                        }
                    }
                } catch {
                    print("Unable to remove freeform metadata atom for involved person credit")
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
                var itemIdentifiers = [String]()
                for item in try parser.listMetadataTags() {
                    itemIdentifiers.append(item.identifier)
                }
                let filteredIdentifiers = itemIdentifiers.filter({InvolvedPersonCredits(rawValue: $0) != nil })
                for item in filteredIdentifiers {
                    if let credit = InvolvedPersonCredits(rawValue: item) {
                        if let freeformCredit = try getFreeformMetadata(name: item) {
                            let array: [String] = freeformCredit.components(separatedBy: ";")
                            credits[credit] = array
                        }
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
            }
            if let artDirector = newValue.first(where: {$0.key == .artDirection}) {
                let array: [String] = artDirector.value
                let string: String = array.joined(separator: ";")
                self.artDirector = string
            }
            if let executiveProducer = newValue.first(where: {$0.key == .executiveProducer}) {
                let array: [String] = executiveProducer.value
                let string: String = array.joined(separator: ";")
                self.executiveProducer = string
            }
            if let producer = newValue.first(where: {$0.key == .producer}) {
                let array: [String] = producer.value
                let string: String = array.joined(separator: ";")
                self.producer = string
            }
            if let soundEngineer = newValue.first(where: {$0.key == .soundEngineer}) {
                let array: [String] = soundEngineer.value
                let string: String = array.joined(separator: ";")
                self.soundEngineer = string
            }
            if !newValue.isEmpty {
                for (key, value) in newValue {
                    let dupeKeys: [InvolvedPersonCredits] = [.artDirection, .director, .executiveProducer, .producer, .soundEngineer]
                    if !dupeKeys.contains(key) {
                        let keyString: String = key.rawValue
                        let valueString: String = value.joined(separator: ";")
                        
                        do {
                            try setFreeformMetadata(name: keyString,
                                                    stringValue: valueString)
                        } catch {
                            print("Unable to create freeform metadata atom for involved person credit \(keyString)")
                        }
                    }
                }
            } else {
                do {
                    for item in try parser.listMetadataTags() {
                        if InvolvedPersonCredits(rawValue: item.identifier) != nil {
                            try setFreeformMetadata(name: item.identifier, stringValue: nil)
                        }
                    }
                } catch {
                    print("Unable to remove freeform metadata atom for involved person credit")
                }
            }
        }
    }
}
