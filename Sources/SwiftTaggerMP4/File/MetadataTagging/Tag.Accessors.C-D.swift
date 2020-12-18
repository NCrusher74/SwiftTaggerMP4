//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
import SwiftConvenienceExtensions
@available(OSX 11.0,  iOS 14.0, *)
extension Tag {
    public var category: String? {
        get {
            if let atom = metadataAtoms[.category] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .category, stringValue: new)
                    metadataAtoms[.category] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.category)")
                }
            } else {
                metadataAtoms[.category] = nil
            }
        }
    }
    
    public var comment: String? {
        get {
            if let atom = metadataAtoms[.comment] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .comment, stringValue: new)
                    metadataAtoms[.comment] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.comment)")
                }
            } else {
                metadataAtoms[.comment] = nil
            }
        }
    }
    
    public var compilation: Bool? {
        get {
            if let atom = metadataAtoms[.compilation] as? IntegerMetadataAtom {
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
                    let atom = try IntegerMetadataAtom(identifier: .compilation, intValue: 1)
                        metadataAtoms[.compilation] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .compilation, intValue: 0)
                        metadataAtoms[.compilation] = atom
                    }
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.compilation)")
                }
            } else {
                metadataAtoms[.compilation] = nil
            }
        }
    }
    
    public var composer: String? {
        get {
            if let atom = metadataAtoms[.composer] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .composer, stringValue: new)
                    metadataAtoms[.composer] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.composer)")
                }
            } else {
                metadataAtoms[.composer] = nil
            }
        }
    }
    
    public var composerID: Int? {
        get {
            if let atom = metadataAtoms[.composerID] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .composerID, intValue: new)
                    metadataAtoms[.composerID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.composerID)")
                }
            } else {
                metadataAtoms[.composerID] = nil
            }
        }
    }
    
    public var composerKeywords: [String]? {
        get {
            if let atom = metadataAtoms[.composerKeywords] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .composerKeywords, stringValue: new.toString)
                    metadataAtoms[.composerKeywords] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.composerKeywords)")
                }
            } else {
                metadataAtoms[.composerKeywords] = nil
            }
        }
    }

    public var composerSort: String? {
        get {
            if let atom = metadataAtoms[.composerSort] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .composerSort, stringValue: new)
                    metadataAtoms[.composerSort] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.composerSort)")
                }
            } else {
                metadataAtoms[.composerSort] = nil
            }
        }
    }
    
    public var conductor: String? {
        get {
            if let atom = metadataAtoms[.conductor] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .conductor, stringValue: new)
                    metadataAtoms[.conductor] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.conductor)")
                }
            } else {
                metadataAtoms[.conductor] = nil
            }
        }
    }
    
    public var conductorID: Int? {
        get {
            if let atom = metadataAtoms[.conductorID] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .conductorID, intValue: new)
                    metadataAtoms[.conductorID] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.conductorID)")
                }
            } else {
                metadataAtoms[.conductorID] = nil
            }
        }
    }
    
    public var contentRating: (contentRating: ContentRating, ratingNotes: String?) {
        get {
            if let string = self["iTunEXTC"] {
                let components: [String] = string.components(separatedBy: "|")
                if components.count == 3 {
                    if let rating = ContentRating(rawValue: string) {
                        return (rating, nil)
                    } else {
                        return (.none, nil)
                    }
                } else {
                    let ratingComponentsString = components[0 ..< 3].joined(separator: "|") + "|"
                    let note = components.last
                    if let rating = ContentRating(rawValue: ratingComponentsString) {
                        return (rating, note)
                    } else {
                        return (.none, nil)
                    }
                }
            } else {
                return (.none, nil)
            }
        }
        set {
            if newValue != (.none, nil) {
                let string = newValue.contentRating.rawValue
                if let note = newValue.ratingNotes {
                    self["iTunEXTC"] = string + note
                } else {
                    self["iTunEXTC"] = string
                }
            }
        }
    }
    
    public var copyright: String? {
        get {
            if let atom = metadataAtoms[.copyright] as? StringMetadataAtom, atom.stringValue.hasPrefix("\u{00A9}") {
                return atom.stringValue
            } else if let atom = metadataAtoms[.copyright] as? StringMetadataAtom {
                return "\u{00A9}\(atom.stringValue)"
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .copyright, stringValue: "\u{00A9}\(new)")
                    metadataAtoms[.copyright] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.copyright)")
                }
            } else {
                metadataAtoms[.copyright] = nil
            }
        }
    }
    
    public var copyrightStatement: String? {
        get {
            if let atom = metadataAtoms[.copyrightStatement] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .copyrightStatement, stringValue: new)
                    metadataAtoms[.copyrightStatement] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.copyrightStatement)")
                }
            } else {
                metadataAtoms[.copyrightStatement] = nil
            }
        }
    }
    
    public var customGenre: String? {
        get {
            if let atom = metadataAtoms[.customGenre] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .customGenre, stringValue: new)
                    metadataAtoms[.customGenre] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.customGenre)")
                }
            } else {
                metadataAtoms[.customGenre] = nil
            }
        }
    }
    
    public var description: String? {
        get {
            if let atom = metadataAtoms[.description] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .description, stringValue: new)
                    metadataAtoms[.description] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.description)")
                }
            } else {
                metadataAtoms[.description] = nil
            }
        }
    }
    
    public var director: String? {
        get {
            if let atom = metadataAtoms[.director] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .director, stringValue: new)
                    metadataAtoms[.director] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.director)")
                }
            } else {
                metadataAtoms[.director] = nil
            }
        }
    }
    
    public var discNumber: IntIndex {
        get {
            if let atom = metadataAtoms[.discNumber] as? PartAndTotalMetadataAtom {
                return IntIndex(index: atom.part, total: atom.total)
            } else {
                return IntIndex(index: 0, total: nil)
            }
        }
        set {
            if newValue != IntIndex(index: 0, total: nil) {
                do {
                    let atom = try PartAndTotalMetadataAtom(
                        identifier: "disk",
                        part: newValue.index,
                        total: newValue.total)
                    metadataAtoms[.discNumber] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier 'disk'")
                }
            } else {
                metadataAtoms[.discNumber] = nil
            }
        }
    }
}
