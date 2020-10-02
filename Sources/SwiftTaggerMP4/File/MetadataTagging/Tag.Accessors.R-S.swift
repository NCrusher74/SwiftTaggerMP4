//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Tag {
    public var rating: Rating? {
        get {
            if let atom = metadataAtoms[.rating] as? IntegerMetadataAtom {
                return Rating(rawValue: atom.intValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .rating, intValue: new.rawValue)
                    metadataAtoms[.rating] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.rating)")
                }
            } else {
                metadataAtoms[.rating] = nil
            }
        }
    }
    
    public var showWorkAndMovement: Bool? {
        get {
            if let atom = metadataAtoms[.showWorkAndMovement] as? IntegerMetadataAtom {
                if atom.intValue == 1 {
                    return true
                } else {
                    return false
                }
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    if new == true {
                        let atom = try IntegerMetadataAtom(identifier: .showWorkAndMovement, intValue: 1)
                        metadataAtoms[.showWorkAndMovement] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .showWorkAndMovement, intValue: 0)
                        metadataAtoms[.showWorkAndMovement] = atom
                    }
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.showWorkAndMovement)")
                }
            } else {
                metadataAtoms[.showWorkAndMovement] = nil
            }
        }
    }
    
    @available(OSX 10.12, *)
    public var recordingDate: Date? {
        get {
            if let atom = metadataAtoms[.recordingDate] as? StringMetadataAtom {
                
                let formatter = ISO8601DateFormatter()
                let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
                formatter.formatOptions = .withInternetDateTime
                formatter.timeZone = timeZone
                if let date = formatter.date(from: atom.stringValue) {
                    return date
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                let formatter = ISO8601DateFormatter()
                let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
                formatter.formatOptions = .withInternetDateTime
                formatter.timeZone = timeZone
                do {
                    let atom = try StringMetadataAtom(identifier: .recordingDate, stringValue: formatter.string(from: new))
                    metadataAtoms[.recordingDate] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordingDate)")
                }
            } else {
                metadataAtoms[.recordingDate] = nil
            }
        }
    }

    @available(OSX 10.12, *)
    public var releaseDate: Date? {
        get {
            if let atom = metadataAtoms[.releaseDate] as? StringMetadataAtom {
                
                let formatter = ISO8601DateFormatter()
                let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
                formatter.formatOptions = .withInternetDateTime
                formatter.timeZone = timeZone
                if let date = formatter.date(from: atom.stringValue) {
                    return date
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                let formatter = ISO8601DateFormatter()
                let timeZone = TimeZone(secondsFromGMT: 0) ?? .current
                formatter.formatOptions = .withInternetDateTime
                formatter.timeZone = timeZone
                do {
                    let atom = try StringMetadataAtom(identifier: .releaseDate, stringValue: formatter.string(from: new))
                    metadataAtoms[.releaseDate] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.releaseDate)")
                }
            } else {
                metadataAtoms[.releaseDate] = nil
            }
        }
    }

    public var songwriterKeywords: [String]? {
        get {
            if let atom = metadataAtoms[.songwriterKeywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .songwriterKeywords, stringValue: new.toString)
                    metadataAtoms[.songwriterKeywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.songwriterKeywords)")
                }
            } else {
                metadataAtoms[.songwriterKeywords] = nil
            }
        }
    }
    
    public var subtitleKeywords: [String]? {
        get {
            if let atom = metadataAtoms[.subtitleKeywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .subtitleKeywords, stringValue: new.toString)
                    metadataAtoms[.subtitleKeywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.subtitleKeywords)")
                }
            } else {
                metadataAtoms[.subtitleKeywords] = nil
            }
        }
    }
    
    public var recordCompany: String? {
        get {
            if let atom = metadataAtoms[.recordCompany] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .recordCompany, stringValue: new)
                    metadataAtoms[.recordCompany] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordCompany)")
                }
            } else {
                metadataAtoms[.recordCompany] = nil
            }
        }
    }
    
    public var recordCompanyUrl: String? {
        get {
            if let atom = metadataAtoms[.recordCompanyUrl] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .recordCompanyUrl, stringValue: new)
                    metadataAtoms[.recordCompanyUrl] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordCompanyUrl)")
                }
            } else {
                metadataAtoms[.recordCompanyUrl] = nil
            }
        }
    }
    
    public var recordingCopyright: String? {
        get {
            if let atom = metadataAtoms[.recordingCopyright] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .recordingCopyright, stringValue: "\u{2117} \(new)")
                    metadataAtoms[.recordingCopyright] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordingCopyright)")
                }
            } else {
                metadataAtoms[.recordingCopyright] = nil
            }
        }
    }
    
    public var requirements: String? {
        get {
            if let atom = metadataAtoms[.requirements] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .requirements, stringValue: new)
                    metadataAtoms[.requirements] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.requirements)")
                }
            } else {
                metadataAtoms[.requirements] = nil
            }
        }
    }
    
    public var sellerID: String? {
        get {
            if let atom = metadataAtoms[.sellerID] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .sellerID, stringValue: new)
                    metadataAtoms[.sellerID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.sellerID)")
                }
            } else {
                metadataAtoms[.sellerID] = nil
            }
        }
    }
    
    public var soundEngineer: String? {
        get {
            if let atom = metadataAtoms[.soundEngineer] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .soundEngineer, stringValue: new)
                    metadataAtoms[.soundEngineer] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.soundEngineer)")
                }
            } else {
                metadataAtoms[.soundEngineer] = nil
            }
        }
    }
    
    public var softwareVersion: String? {
        get {
            if let atom = metadataAtoms[.softwareVersion] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .softwareVersion, stringValue: new)
                    metadataAtoms[.softwareVersion] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.softwareVersion)")
                }
            } else {
                metadataAtoms[.softwareVersion] = nil
            }
        }
    }
    
    public var soloist: String? {
        get {
            if let atom = metadataAtoms[.soloist] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .soloist, stringValue: new)
                    metadataAtoms[.soloist] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.soloist)")
                }
            } else {
                metadataAtoms[.soloist] = nil
            }
        }
    }
    
    public var songDescription: String? {
        get {
            if let atom = metadataAtoms[.songDescription] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .songDescription, stringValue: new)
                    metadataAtoms[.songDescription] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.songDescription)")
                }
            } else {
                metadataAtoms[.songDescription] = nil
            }
        }
    }
    
    public var songwriter: String? {
        get {
            if let atom = metadataAtoms[.songwriter] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .songwriter, stringValue: new)
                    metadataAtoms[.songwriter] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.songwriter)")
                }
            } else {
                metadataAtoms[.songwriter] = nil
            }
        }
    }

    public var sourceCredit: String? {
        get {
            if let atom = metadataAtoms[.sourceCredit] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .sourceCredit, stringValue: new)
                    metadataAtoms[.sourceCredit] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.sourceCredit)")
                }
            } else {
                metadataAtoms[.sourceCredit] = nil
            }
        }
    }
    
    public var subtitle: String? {
        get {
            if let atom = metadataAtoms[.subtitle] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .subtitle, stringValue: new)
                    metadataAtoms[.subtitle] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.subtitle)")
                }
            } else {
                metadataAtoms[.subtitle] = nil
            }
        }
    }
}
