//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Tag {
    var title: String? {
        get {
            if let atom = metadataAtoms[.title] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .title, stringValue: new)
                    metadataAtoms[.title] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.title)")
                }
            } else {
                metadataAtoms[.title] = nil
            }
        }
    }
    
    var titleKeywords: [String]? {
        get {
            if let atom = metadataAtoms[.titleKeywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .titleKeywords, stringValue: new.toString)
                    metadataAtoms[.titleKeywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.titleKeywords)")
                }
            } else {
                metadataAtoms[.titleKeywords] = nil
            }
        }
    }
    
    var titleSort: String? {
        get {
            if let atom = metadataAtoms[.titleSort] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .titleSort, stringValue: new)
                    metadataAtoms[.titleSort] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.titleSort)")
                }
            } else {
                metadataAtoms[.titleSort] = nil
            }
        }
    }
    
    var thanks: String? {
        get {
            if let atom = metadataAtoms[.thanks] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .thanks, stringValue: new)
                    metadataAtoms[.thanks] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.thanks)")
                }
            } else {
                metadataAtoms[.thanks] = nil
            }
        }
    }
    
    var trackNumber: (track: Int, totalTracks: Int?) {
        get {
            if let atom = metadataAtoms[.trackNumber] as? PartAndTotalMetadataAtom {
                return (atom.part, atom.total)
            } else {
                return (0, nil)
            }
        }
        set {
            if newValue != (0, nil) {
                do {
                    let atom = try PartAndTotalMetadataAtom(
                        identifier: "trkn",
                        part: newValue.track,
                        total: newValue.totalTracks)
                    metadataAtoms[.trackNumber] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier 'trkn'")
                }
            } else {
                metadataAtoms[.trackNumber] = nil
            }
        }
    }
    
    var trackSubtitle: String? {
        get {
            if let atom = metadataAtoms[.trackSubtitle] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .trackSubtitle, stringValue: new)
                    metadataAtoms[.trackSubtitle] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.trackSubtitle)")
                }
            } else {
                metadataAtoms[.trackSubtitle] = nil
            }
        }
    }
    
    var tvEpisodeNumber: Int? {
        get {
            if let atom = metadataAtoms[.tvEpisodeNumber] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .tvEpisodeNumber, intValue: new)
                    metadataAtoms[.tvEpisodeNumber] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.tvEpisodeNumber)")
                }
            } else {
                metadataAtoms[.tvEpisodeNumber] = nil
            }
        }
    }
    
    var tvEpisodeTitle: String? {
        get {
            if let atom = metadataAtoms[.tvEpisodeTitle] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvEpisodeTitle, stringValue: new)
                    metadataAtoms[.tvEpisodeTitle] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvEpisodeTitle)")
                }
            } else {
                metadataAtoms[.tvEpisodeTitle] = nil
            }
        }
    }
    
    var tvNetwork: String? {
        get {
            if let atom = metadataAtoms[.tvNetwork] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvNetwork, stringValue: new)
                    metadataAtoms[.tvNetwork] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvNetwork)")
                }
            } else {
                metadataAtoms[.tvNetwork] = nil
            }
        }
    }
    
    var tvSeason: Int? {
        get {
            if let atom = metadataAtoms[.tvSeason] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .tvSeason, intValue: new)
                    metadataAtoms[.tvSeason] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.tvSeason)")
                }
            } else {
                metadataAtoms[.tvSeason] = nil
            }
        }
    }
    
    var tvShow: String? {
        get {
            if let atom = metadataAtoms[.tvShow] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvShow, stringValue: new)
                    metadataAtoms[.tvShow] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvShow)")
                }
            } else {
                metadataAtoms[.tvShow] = nil
            }
        }
    }
    
    var tvShowDescription: String? {
        get {
            if let atom = metadataAtoms[.tvShowDescription] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvShowDescription, stringValue: new)
                    metadataAtoms[.tvShowDescription] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvShowDescription)")
                }
            } else {
                metadataAtoms[.tvShowDescription] = nil
            }
        }
    }
    
    var tvShowSort: String? {
        get {
            if let atom = metadataAtoms[.tvShowSort] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvShowSort, stringValue: new)
                    metadataAtoms[.tvShowSort] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvShowSort)")
                }
            } else {
                metadataAtoms[.tvShowSort] = nil
            }
        }
    }
    
    var website: String? {
        get {
            if let atom = metadataAtoms[.website] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .website, stringValue: new)
                    metadataAtoms[.website] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.website)")
                }
            } else {
                metadataAtoms[.website] = nil
            }
        }
    }
    
    var workName: String? {
        get {
            if let atom = metadataAtoms[.workName] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .workName, stringValue: new)
                    metadataAtoms[.workName] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.workName)")
                }
            } else {
                metadataAtoms[.workName] = nil
            }
        }
    }
    
    var writer: String? {
        get {
            if let atom = metadataAtoms[.writer] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .writer, stringValue: new)
                    metadataAtoms[.writer] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.writer)")
                }
            } else {
                metadataAtoms[.writer] = nil
            }
        }
    }
    
    var year: Int? {
        get {
            if let atom = metadataAtoms[.year] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .year, intValue: new)
                    metadataAtoms[.year] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.year)")
                }
            } else {
                metadataAtoms[.year] = nil
            }
        }
    }
}
