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
            if let atom = metadataAtoms[.acknowledgment] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                let atom = try StringMetadataAtom(identifier: .acknowledgment, stringValue: new)
                    metadataAtoms[.acknowledgment] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.acknowledgment)")
                }
            } else {
                metadataAtoms[.acknowledgment] = nil
            }
        }
    }
    
    public var album: String? {
        get {
            if let atom = metadataAtoms[.album] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .album, stringValue: new)
                    metadataAtoms[.album] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.album)")
                }
            } else {
                metadataAtoms[.album] = nil
            }
        }
    }

    public var albumArtist: String? {
        get {
            if let atom = metadataAtoms[.albumArtist] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .albumArtist, stringValue: new)
                    metadataAtoms[.albumArtist] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.albumArtist)")
                }
            } else {
                metadataAtoms[.albumArtist] = nil
            }
        }
    }

    public var albumArtistSort: String? {
        get {
            if let atom = metadataAtoms[.albumArtistSort] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .albumArtistSort, stringValue: new)
                    metadataAtoms[.albumArtistSort] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.albumArtistSort)")
                }
            } else {
                metadataAtoms[.albumArtistSort] = nil
            }
        }
    }

    public var albumSort: String? {
        get {
            if let atom = metadataAtoms[.albumSort] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .albumSort, stringValue: new)
                    metadataAtoms[.albumSort] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.albumSort)")
                }
            } else {
                metadataAtoms[.albumSort] = nil
            }
        }
    }

    public var arranger: String? {
        get {
            if let atom = metadataAtoms[.arranger] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .arranger, stringValue: new)
                    metadataAtoms[.arranger] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.arranger)")
                }
            } else {
                metadataAtoms[.arranger] = nil
            }
        }
    }
    
    public var arrangerKeywords: [String]? {
        get {
            if let atom = metadataAtoms[.arrangerKeywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .arrangerKeywords, stringValue: new.toString)
                    metadataAtoms[.arrangerKeywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.arrangerKeywords)")
                }
            } else {
                metadataAtoms[.arrangerKeywords] = nil
            }
        }
    }

    public var artDirector: String? {
        get {
            if let atom = metadataAtoms[.artDirector] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artDirector, stringValue: new)
                    metadataAtoms[.artDirector] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artDirector)")
                }
            } else {
                metadataAtoms[.artDirector] = nil
            }
        }
    }

    public var artist: String? {
        get {
            if let atom = metadataAtoms[.artist] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artist, stringValue: new)
                    metadataAtoms[.artist] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artist)")
                }
            } else {
                metadataAtoms[.artist] = nil
            }
        }
    }

    public var artistKeywords: [String]? {
        get {
            if let atom = metadataAtoms[.artistKeywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artistKeywords, stringValue: new.toString)
                    metadataAtoms[.artistKeywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artistKeywords)")
                }
            } else {
                metadataAtoms[.artistKeywords] = nil
            }
        }
    }

    public var artistSort: String? {
        get {
            if let atom = metadataAtoms[.artistSort] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artistSort, stringValue: new)
                    metadataAtoms[.artistSort] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artistSort)")
                }
            } else {
                metadataAtoms[.artistSort] = nil
            }
        }
    }
    
    public var artistUrl: String? {
        get {
            if let atom = metadataAtoms[.artistUrl] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .artistUrl, stringValue: new)
                    metadataAtoms[.artistUrl] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.artistUrl)")
                }
            } else {
                metadataAtoms[.artistUrl] = nil
            }
        }
    }

    public var artistID: Int? {
        get {
            if let atom = metadataAtoms[.artistID] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .artistID, intValue: new)
                    metadataAtoms[.artistID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.artistID)")
                }
            } else {
                metadataAtoms[.artistID] = nil
            }
        }
    }

    public var appleStoreCountryID: Int? {
        get {
            if let atom = metadataAtoms[.appleStoreCountryID] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .appleStoreCountryID, intValue: new)
                    metadataAtoms[.appleStoreCountryID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.appleStoreCountryID)")
                }
            } else {
                metadataAtoms[.appleStoreCountryID] = nil
            }
        }
    }

    public var bpm: Int? {
        get {
            if let atom = metadataAtoms[.bpm] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .bpm, intValue: new)
                    metadataAtoms[.bpm] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.bpm)")
                }
            } else {
                metadataAtoms[.bpm] = nil
            }
        }
    }
}
