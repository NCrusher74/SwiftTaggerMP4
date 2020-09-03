//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Mp4File {
    public var narrator: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.narrator.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .narrator, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.narrator.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.narrator)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.narrator.rawValue] = nil
            }
        }
    }
    
    public var originalArtist: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.originalArtist.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .originalArtist, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.originalArtist.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.originalArtist)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.originalArtist.rawValue] = nil
            }
        }
    }
    
    public var owner: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.owner.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .owner, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.owner.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.owner)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.owner.rawValue] = nil
            }
        }
    }

    public var performers: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.performers.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .performers, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.performers.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.performers)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.performers.rawValue] = nil
            }
        }
    }
    
    var playlistID: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.playlistID.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .playlistID, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.playlistID.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.playlistID)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.playlistID.rawValue] = nil
            }
        }
    }
    
    var podcast: Bool? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.podcast.rawValue] as? IntegerMetadataAtom {
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
                        let atom = try IntegerMetadataAtom(identifier: .podcast, intValue: 1)
                        metadataAtoms[IntegerMetadataIdentifier.podcast.rawValue] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .podcast, intValue: 0)
                        metadataAtoms[IntegerMetadataIdentifier.podcast.rawValue] = atom
                    }
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.podcast)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.podcast.rawValue] = nil
            }
        }
    }
    
    public var podcastID: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.podcastID.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .podcastID, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.podcastID.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.podcastID)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.podcastID.rawValue] = nil
            }
        }
    }

    public var podcastUrl: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.podcastUrl.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .podcastUrl, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.podcastUrl.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.podcastUrl)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.podcastUrl.rawValue] = nil
            }
        }
    }

    /// Stores the genre as a string value
    var predefinedGenre: Genres? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.predefinedGenre.rawValue] as? StringMetadataAtom {
                return Genres(genreName: atom.stringValue)
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .predefinedGenre, stringValue: new.predefinedGenres)
                    metadataAtoms[StringMetadataIdentifier.predefinedGenre.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.predefinedGenre)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.predefinedGenre.rawValue] = nil
            }
        }
    }

    public var producer: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.producer.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .producer, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.producer.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.producer)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.producer.rawValue] = nil
            }
        }
    }

    public var producerKeywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.producerKeywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .producerKeywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.producerKeywords.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.producerKeywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.producerKeywords.rawValue] = nil
            }
        }
    }
    
    public var publisher: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.publisher.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .publisher, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.publisher.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.publisher)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.publisher.rawValue] = nil
            }
        }
    }

    public var publisherUrl: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.publisherUrl.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .publisherUrl, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.publisherUrl.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.publisherUrl)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.publisherUrl.rawValue] = nil
            }
        }
    }

    @available(OSX 10.12, *)
    public var purchaseDate: Date? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.purchaseDate.rawValue] as? StringMetadataAtom {

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
                    let atom = try StringMetadataAtom(identifier: .purchaseDate, stringValue: formatter.string(from: new))
                    metadataAtoms[StringMetadataIdentifier.purchaseDate.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.purchaseDate)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.purchaseDate.rawValue] = nil
            }
        }
    }
}
