//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Mp4File {
    public var category: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.category.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .category, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.category.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.category)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.category.rawValue] = nil
            }
        }
    }
    
    public var comment: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.comment.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .comment, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.comment.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.comment)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.comment.rawValue] = nil
            }
        }
    }
    
    var compilation: Bool? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.compilation.rawValue] as? IntegerMetadataAtom {
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
                        metadataAtoms[IntegerMetadataIdentifier.compilation.rawValue] = atom
                    } else {
                        let atom = try IntegerMetadataAtom(identifier: .compilation, intValue: 0)
                        metadataAtoms[IntegerMetadataIdentifier.compilation.rawValue] = atom
                    }
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.compilation)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.compilation.rawValue] = nil
            }
        }
    }
    
    public var composer: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.composer.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .composer, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.composer.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.composer)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.composer.rawValue] = nil
            }
        }
    }
    
    var composerID: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.composerID.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .composerID, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.composerID.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.composerID)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.composerID.rawValue] = nil
            }
        }
    }
    
    public var composerKeywords: [String]? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.composerKeywords.rawValue] as? StringMetadataAtom {
                return atom.stringValue.toArray
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .composerKeywords, stringValue: new.toString)
                    metadataAtoms[StringMetadataIdentifier.composerKeywords.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.composerKeywords)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.composerKeywords.rawValue] = nil
            }
        }
    }

    public var composerSort: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.composerSort.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .composerSort, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.composerSort.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.composerSort)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.composerSort.rawValue] = nil
            }
        }
    }
    
    public var conductor: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.conductor.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .conductor, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.conductor.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.conductor)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.conductor.rawValue] = nil
            }
        }
    }
    
    var conductorID: Int? {
        get {
            if let atom = metadataAtoms[IntegerMetadataIdentifier.conductorID.rawValue] as? IntegerMetadataAtom {
                return atom.intValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try IntegerMetadataAtom(identifier: .conductorID, intValue: new)
                    metadataAtoms[IntegerMetadataIdentifier.conductorID.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(IntegerMetadataIdentifier.conductorID)")
                }
            } else {
                metadataAtoms[IntegerMetadataIdentifier.conductorID.rawValue] = nil
            }
        }
    }
    
    public var copyright: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.copyright.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .copyright, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.copyright.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.copyright)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.copyright.rawValue] = nil
            }
        }
    }
    
    public var copyrightStatement: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.copyrightStatement.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .copyrightStatement, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.copyrightStatement.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.copyrightStatement)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.copyrightStatement.rawValue] = nil
            }
        }
    }
    
    public var customGenre: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.customGenre.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .customGenre, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.customGenre.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.customGenre)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.customGenre.rawValue] = nil
            }
        }
    }
    
    public var description: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.description.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .description, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.description.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.description)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.description.rawValue] = nil
            }
        }
    }
    
    public var director: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.director.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .director, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.director.rawValue] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.director)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.director.rawValue] = nil
            }
        }
    }
    
    public var discNumber: (disc: Int, totalDiscs: Int?) {
        get {
            if let atom = metadataAtoms["disk"] as? PartAndTotalMetadataAtom {
                return (atom.part, atom.total)
            } else {
                return (0, nil)
            }
        }
        set {
            if newValue != (0, nil) {
                do {
                    let atom = try PartAndTotalMetadataAtom(
                        identifier: "disk",
                        part: newValue.disc,
                        total: newValue.totalDiscs)
                    metadataAtoms["disk"] = atom
                } catch {
                    print("WARNING: Unable to initialize metadata atom with identifier 'disk'")
                }
            } else {
                metadataAtoms["disk"] = nil
            }
        }
    }
}
