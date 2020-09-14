//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Tag {
    public var title: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.title.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .title, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.title.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.title)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.title.rawValue] = nil
            }
        }
    }
    
    public var titleKeywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.titleKeywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .titleKeywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.titleKeywords.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.titleKeywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.titleKeywords.rawValue] = nil
            }
        }
    }
    
    public var titleSort: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.titleSort.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .titleSort, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.titleSort.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.titleSort)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.titleSort.rawValue] = nil
            }
        }
    }
    
    public var thanks: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.thanks.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .thanks, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.thanks.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.thanks)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.thanks.rawValue] = nil
            }
        }
    }
    
    public var trackNumber: (track: Int, totalTracks: Int?) {
        get {
            if let atom = metadataAtoms["trkn"] as? PartAndTotalMetadataAtom {
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
                    metadataAtoms["trkn"] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier 'trkn'")
                }
            } else {
                metadataAtoms["trkn"] = nil
            }
        }
    }
    
    public var trackSubtitle: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.trackSubtitle.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .trackSubtitle, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.trackSubtitle.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.trackSubtitle)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.trackSubtitle.rawValue] = nil
            }
        }
    }
    
    var tvEpisodeNumber: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.tvEpisodeNumber.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .tvEpisodeNumber, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.tvEpisodeNumber.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.tvEpisodeNumber)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.tvEpisodeNumber.rawValue] = nil
            }
        }
    }
    
    public var tvEpisodeTitle: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.tvEpisodeTitle.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvEpisodeTitle, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.tvEpisodeTitle.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvEpisodeTitle)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.tvEpisodeTitle.rawValue] = nil
            }
        }
    }
    
    public var tvNetwork: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.tvNetwork.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvNetwork, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.tvNetwork.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvNetwork)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.tvNetwork.rawValue] = nil
            }
        }
    }
    
    var tvSeason: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.tvSeason.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .tvSeason, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.tvSeason.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.tvSeason)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.tvSeason.rawValue] = nil
            }
        }
    }
    
    public var tvShow: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.tvShow.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvShow, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.tvShow.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvShow)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.tvShow.rawValue] = nil
            }
        }
    }
    
    public var tvShowDescription: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.tvShowDescription.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvShowDescription, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.tvShowDescription.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvShowDescription)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.tvShowDescription.rawValue] = nil
            }
        }
    }
    
    public var tvShowSort: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.tvShowSort.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .tvShowSort, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.tvShowSort.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.tvShowSort)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.tvShowSort.rawValue] = nil
            }
        }
    }
    
    public var website: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.website.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .website, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.website.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.website)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.website.rawValue] = nil
            }
        }
    }
    
    public var workName: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.workName.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .workName, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.workName.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.workName)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.workName.rawValue] = nil
            }
        }
    }
    
    public var writer: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.writer.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .writer, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.writer.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.writer)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.writer.rawValue] = nil
            }
        }
    }
    
    var year: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.year.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .year, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.year.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.year)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.year.rawValue] = nil
            }
        }
    }
}
