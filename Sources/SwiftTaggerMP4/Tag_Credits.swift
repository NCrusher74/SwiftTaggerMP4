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
            } else {
                do {
                    try parser.set(.artDirector,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artDirector.rawValue)")
                }
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
            } else {
                do {
                    try parser.set(.director,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.director.rawValue)")
                }
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
            } else {
                do {
                    try parser.set(.executiveProducer,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.executiveProducer.rawValue)")
                }
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
            } else {
                do {
                    try parser.set(.performers,
                                   arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.performers.rawValue)")
                }
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
            } else {
                do {
                    try parser.set(.producer,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.producer.rawValue)")
                }
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
            } else {
                do {
                    try parser.set(.soloist,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.soloist.rawValue)")
                }
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
            } else {
                do {
                    try parser.set(.soundEngineer,
                                   stringValue: nil,
                                   customName: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.soundEngineer.rawValue)")
                }
            }
        }
    }
    
    // MARK: Performer and Involved Person Credits
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
            }
        }
    }
}
