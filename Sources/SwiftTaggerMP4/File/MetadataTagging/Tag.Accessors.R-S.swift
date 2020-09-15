//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Tag {
    var rating: Rating? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.rating.rawValue] as? IntegerMetadataAtom {
                return Rating(rawValue: atom.intValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .rating, intValue: new.rawValue)
                    metadataAtoms[IntegerMetadataIdentifier.rating.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.rating)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.rating.rawValue] = nil
            }
        }
    }
    
    var showWorkAndMovement: Bool? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.showWorkAndMovement.rawValue] as? IntegerMetadataAtom {
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
                        metadataAtoms[IntegerMetadataIdentifier.showWorkAndMovement.rawValue] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .showWorkAndMovement, intValue: 0)
                        metadataAtoms[IntegerMetadataIdentifier.showWorkAndMovement.rawValue] = atom
                    }
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.showWorkAndMovement)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.showWorkAndMovement.rawValue] = nil
            }
        }
    }
    
    @available(OSX 10.12, *)
    public var recordingDate: Date? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.recordingDate.rawValue] as? StringMetadataAtom {
                
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
                    metadataAtoms[StringMetadataIdentifier.recordingDate.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordingDate)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.recordingDate.rawValue] = nil
            }
        }
    }

    @available(OSX 10.12, *)
    public var releaseDate: Date? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.releaseDate.rawValue] as? StringMetadataAtom {
                
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
                    metadataAtoms[StringMetadataIdentifier.releaseDate.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.releaseDate)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.releaseDate.rawValue] = nil
            }
        }
    }

    public var songwriterKeywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.songwriterKeywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .songwriterKeywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.songwriterKeywords.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.songwriterKeywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.songwriterKeywords.rawValue] = nil
            }
        }
    }
    
    public var subtitleKeywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.subtitleKeywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .subtitleKeywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.subtitleKeywords.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.subtitleKeywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.subtitleKeywords.rawValue] = nil
            }
        }
    }
    
    public var recordCompany: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.recordCompany.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .recordCompany, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.recordCompany.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordCompany)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.recordCompany.rawValue] = nil
            }
        }
    }
    
    public var recordCompanyUrl: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.recordCompanyUrl.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .recordCompanyUrl, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.recordCompanyUrl.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordCompanyUrl)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.recordCompanyUrl.rawValue] = nil
            }
        }
    }
    
    public var recordingCopyright: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.recordingCopyright.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .recordingCopyright, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.recordingCopyright.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.recordingCopyright)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.recordingCopyright.rawValue] = nil
            }
        }
    }
    
    public var requirements: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.requirements.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .requirements, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.requirements.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.requirements)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.requirements.rawValue] = nil
            }
        }
    }
    
    public var sellerID: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.sellerID.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .sellerID, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.sellerID.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.sellerID)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.sellerID.rawValue] = nil
            }
        }
    }
    
    public var soundEngineer: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.soundEngineer.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .soundEngineer, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.soundEngineer.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.soundEngineer)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.soundEngineer.rawValue] = nil
            }
        }
    }
    
    public var softwareVersion: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.softwareVersion.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .softwareVersion, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.softwareVersion.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.softwareVersion)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.softwareVersion.rawValue] = nil
            }
        }
    }
    
    public var soloist: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.soloist.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .soloist, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.soloist.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.soloist)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.soloist.rawValue] = nil
            }
        }
    }
    
    public var songDescription: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.songDescription.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .songDescription, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.songDescription.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.songDescription)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.songDescription.rawValue] = nil
            }
        }
    }
    
    public var songwriter: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.songwriter.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .songwriter, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.songwriter.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.songwriter)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.songwriter.rawValue] = nil
            }
        }
    }

    public var sourceCredit: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.sourceCredit.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .sourceCredit, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.sourceCredit.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.sourceCredit)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.sourceCredit.rawValue] = nil
            }
        }
    }
    
    public var subtitle: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.subtitle.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .subtitle, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.subtitle.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.subtitle)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.subtitle.rawValue] = nil
            }
        }
    }
}
