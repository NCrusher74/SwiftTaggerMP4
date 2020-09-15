//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Tag {
    public var grouping: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.grouping.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .grouping, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.grouping.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.grouping)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.grouping.rawValue] = nil
            }
        }
    }
    
    public var information: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.information.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .information, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.information.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.information)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.information.rawValue] = nil
            }
        }
    }
    
    public var isrc: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.isrc.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .isrc, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.isrc.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.isrc)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.isrc.rawValue] = nil
            }
        }
    }
    
    public var label: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.label.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .label, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.label.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.label)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.label.rawValue] = nil
            }
        }
    }
    
    public var labelUrl: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.labelUrl.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .labelUrl, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.labelUrl.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.labelUrl)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.labelUrl.rawValue] = nil
            }
        }
    }

    public var linerNotes: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.linerNotes.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .linerNotes, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.linerNotes.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.linerNotes)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.linerNotes.rawValue] = nil
            }
        }
    }
    
    public var longDescription: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.longDescription.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .longDescription, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.longDescription.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.longDescription)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.longDescription.rawValue] = nil
            }
        }
    }
    
    public var lyricist: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.lyricist.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .lyricist, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.lyricist.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.lyricist)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.lyricist.rawValue] = nil
            }
        }
    }
    
    public var lyrics: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.lyrics.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .lyrics, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.lyrics.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.lyrics)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.lyrics.rawValue] = nil
            }
        }
    }
    
    public var keywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.keywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .keywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.keywords.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.keywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.keywords.rawValue] = nil
            }
        }
    }
    
    public var gaplessPlayback: Bool? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.gaplessPlayback.rawValue] as? IntegerMetadataAtom {
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
                        metadataAtoms[IntegerMetadataIdentifier.gaplessPlayback.rawValue] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .gaplessPlayback, intValue: 0)
                        metadataAtoms[IntegerMetadataIdentifier.gaplessPlayback.rawValue] = atom
                    }
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.gaplessPlayback)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.gaplessPlayback.rawValue] = nil
            }
        }
    }
    
    /// Records the genre as a numeric code
    public var genreID: Genre? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.genreID.rawValue] as? IntegerMetadataAtom {
                return Genre(rawValue: atom.intValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .genreID, intValue: new.rawValue)
                    metadataAtoms[IntegerMetadataIdentifier.genreID.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.genreID)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.genreID.rawValue] = nil
            }
        }
    }
    
    public var movementNumber: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.movementNumber.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .movementNumber, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.movementNumber.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.movementNumber)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.movementNumber.rawValue] = nil
            }
        }
    }
    
    public var movementCount: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.movementCount.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .movementCount, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.movementCount.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.movementCount)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.movementCount.rawValue] = nil
            }
        }
    }
    
    /// Records the mediaKind aka stik as a numeric code
    public var mediaKind: Stik? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.mediaKind.rawValue] as? IntegerMetadataAtom {
                return Stik(rawValue: atom.intValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .mediaKind, intValue: new.rawValue)
                    metadataAtoms[IntegerMetadataIdentifier.mediaKind.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.mediaKind)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.mediaKind.rawValue] = nil
            }
        }
    }
    
    public var movementName: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.movementName.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .movementName, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.movementName.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.movementName)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.movementName.rawValue] = nil
            }
        }
    }
}
