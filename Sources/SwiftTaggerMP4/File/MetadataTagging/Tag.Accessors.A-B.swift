//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation

extension Tag {
    public var acknowledgment: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.acknowledgment.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                let atom = try StringMetadataAtom(identifier: .acknowledgment, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.acknowledgment.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.acknowledgment)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.acknowledgment.rawValue] = nil
            }
        }
    }
    
    public var album: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.album.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .album, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.album.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.album)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.album.rawValue] = nil
            }
        }
    }

    public var albumArtist: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.albumArtist.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .albumArtist, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.albumArtist.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.albumArtist)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.albumArtist.rawValue] = nil
            }
        }
    }

    public var albumArtistSort: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.albumArtistSort.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .albumArtistSort, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.albumArtistSort.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.albumArtistSort)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.albumArtistSort.rawValue] = nil
            }
        }
    }

    public var albumSort: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.albumSort.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .albumSort, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.albumSort.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.albumSort)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.albumSort.rawValue] = nil
            }
        }
    }

    public var arranger: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.arranger.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .arranger, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.arranger.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.arranger)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.arranger.rawValue] = nil
            }
        }
    }
    
    public var arrangerKeywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.arrangerKeywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .arrangerKeywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.arrangerKeywords.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.arrangerKeywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.arrangerKeywords.rawValue] = nil
            }
        }
    }

    public var artDirector: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.artDirector.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artDirector, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.artDirector.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artDirector)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.artDirector.rawValue] = nil
            }
        }
    }

    public var artist: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.artist.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artist, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.artist.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artist)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.artist.rawValue] = nil
            }
        }
    }

    public var artistKeywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.artistKeywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artistKeywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.artistKeywords.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artistKeywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.artistKeywords.rawValue] = nil
            }
        }
    }

    public var artistSort: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.artistSort.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artistSort, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.artistSort.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artistSort)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.artistSort.rawValue] = nil
            }
        }
    }
    
    public var artistUrl: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.artistUrl.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artistUrl, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.artistUrl.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artistUrl)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.artistUrl.rawValue] = nil
            }
        }
    }

    public var albumID: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.albumID.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .albumID, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.albumID.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.albumID)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.albumID.rawValue] = nil
            }
        }
    }
    
    public var artistID: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.artistID.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .artistID, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.artistID.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.artistID)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.artistID.rawValue] = nil
            }
        }
    }

    public var appleStoreCountryID: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.appleStoreCountryID.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .appleStoreCountryID, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.appleStoreCountryID.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.appleStoreCountryID)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.appleStoreCountryID.rawValue] = nil
            }
        }
    }

    public var bpm: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.bpm.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .bpm, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.bpm.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.bpm)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.bpm.rawValue] = nil
            }
        }
    }
}
