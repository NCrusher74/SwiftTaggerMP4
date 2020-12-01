//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
import iTunesGenreID

@available(OSX 11.0, *)
extension Tag {
    public var grouping: String? {
        get {
            if let atom = metadataAtoms[.grouping] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .grouping, stringValue: new)
                    metadataAtoms[.grouping] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.grouping)")
                }
            } else {
                metadataAtoms[.grouping] = nil
            }
        }
    }
    
    public var information: String? {
        get {
            if let atom = metadataAtoms[.information] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .information, stringValue: new)
                    metadataAtoms[.information] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.information)")
                }
            } else {
                metadataAtoms[.information] = nil
            }
        }
    }
    
    public var isrc: String? {
        get {
            if let atom = metadataAtoms[.isrc] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .isrc, stringValue: new)
                    metadataAtoms[.isrc] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.isrc)")
                }
            } else {
                metadataAtoms[.isrc] = nil
            }
        }
    }
    
    public var iTunesAccount: String? {
        get {
            if let atom = metadataAtoms[.iTunesAccount] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .iTunesAccount, stringValue: new)
                    metadataAtoms[.iTunesAccount] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.iTunesAccount)")
                }
            } else {
                metadataAtoms[.iTunesAccount] = nil
            }
        }
    }
    
    public var label: String? {
        get {
            if let atom = metadataAtoms[.label] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .label, stringValue: new)
                    metadataAtoms[.label] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.label)")
                }
            } else {
                metadataAtoms[.label] = nil
            }
        }
    }
    
    public var labelUrl: String? {
        get {
            if let atom = metadataAtoms[.labelUrl] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .labelUrl, stringValue: new)
                    metadataAtoms[.labelUrl] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.labelUrl)")
                }
            } else {
                metadataAtoms[.labelUrl] = nil
            }
        }
    }

    public var linerNotes: String? {
        get {
            if let atom = metadataAtoms[.linerNotes] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .linerNotes, stringValue: new)
                    metadataAtoms[.linerNotes] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.linerNotes)")
                }
            } else {
                metadataAtoms[.linerNotes] = nil
            }
        }
    }
    
    public var longDescription: String? {
        get {
            if let atom = metadataAtoms[.longDescription] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .longDescription, stringValue: new)
                    metadataAtoms[.longDescription] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.longDescription)")
                }
            } else {
                metadataAtoms[.longDescription] = nil
            }
        }
    }
    
    public var lyricist: String? {
        get {
            if let atom = metadataAtoms[.lyricist] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .lyricist, stringValue: new)
                    metadataAtoms[.lyricist] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.lyricist)")
                }
            } else {
                metadataAtoms[.lyricist] = nil
            }
        }
    }
    
    public var lyrics: String? {
        get {
            if let atom = metadataAtoms[.lyrics] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .lyrics, stringValue: new)
                    metadataAtoms[.lyrics] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.lyrics)")
                }
            } else {
                metadataAtoms[.lyrics] = nil
            }
        }
    }
    
    public var keywords: [String]? {
        get {
            if let atom = metadataAtoms[.keywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .keywords, stringValue: new.toString)
                    metadataAtoms[.keywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.keywords)")
                }
            } else {
                metadataAtoms[.keywords] = nil
            }
        }
    }
    
    public var gaplessPlayback: Bool? {
        get {
            if let atom = metadataAtoms[.gaplessPlayback] as? IntegerMetadataAtom {
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
                        let atom = try IntegerMetadataAtom(identifier: .gaplessPlayback, intValue: 1)
                        metadataAtoms[.gaplessPlayback] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .gaplessPlayback, intValue: 0)
                        metadataAtoms[.gaplessPlayback] = atom
                    }
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.gaplessPlayback)")
                }
            } else {
                metadataAtoms[.gaplessPlayback] = nil
            }
        }
    }
    
    /// Records the genre as a numeric code
    public var genreID: Genre? {
        get {
            if let atom = metadataAtoms[.genreID] as? IntegerMetadataAtom {
                return Genre(identifier: atom.intValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .genreID, intValue: new.identifier)
                    metadataAtoms[.genreID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.genreID)")
                }
            } else {
                metadataAtoms[.genreID] = nil
            }
        }
    }
    
    public var iTunesAccountType: Int? {
        get {
            if let atom = metadataAtoms[.iTunesAccountType] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .iTunesAccountType, intValue: new)
                    metadataAtoms[.iTunesAccountType] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.iTunesAccountType)")
                }
            } else {
                metadataAtoms[.iTunesAccountType] = nil
            }
        }
    }
    
    public var movementNumber: Int? {
        get {
            if let atom = metadataAtoms[.movementNumber] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .movementNumber, intValue: new)
                    metadataAtoms[.movementNumber] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.movementNumber)")
                }
            } else {
                metadataAtoms[.movementNumber] = nil
            }
        }
    }
    
    public var movementCount: Int? {
        get {
            if let atom = metadataAtoms[.movementCount] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .movementCount, intValue: new)
                    metadataAtoms[.movementCount] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.movementCount)")
                }
            } else {
                metadataAtoms[.movementCount] = nil
            }
        }
    }
    
    /// Records the mediaKind aka stik as a numeric code
    public var mediaKind: Stik? {
        get {
            if let atom = metadataAtoms[.mediaKind] as? IntegerMetadataAtom {
                return Stik(rawValue: atom.intValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .mediaKind, intValue: new.rawValue)
                    metadataAtoms[.mediaKind] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.mediaKind)")
                }
            } else {
                metadataAtoms[.mediaKind] = nil
            }
        }
    }
    
    public var movement: String? {
        get {
            if let atom = metadataAtoms[.movementName] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .movementName, stringValue: new)
                    metadataAtoms[.movementName] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.movementName)")
                }
            } else {
                metadataAtoms[.movementName] = nil
            }
        }
    }
}
