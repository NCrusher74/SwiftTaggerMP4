//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Tag {
    public var editDateAndDescription1: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription1.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription1, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription1.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription1)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription1.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription2: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription2.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription2, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription2.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription2)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription2.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription3: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription3.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription3, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription3.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription3)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription3.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription4: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription4.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription4, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription4.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription4)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription4.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription5: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription5.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription5, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription5.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription5)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription5.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription6: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription6.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription6, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription6.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription6)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription6.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription7: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription7.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription7, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription7.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription7)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription7.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription8: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription8.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription8, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription8.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription8)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription8.rawValue] = nil
            }
        }
    }
    
    public var editDateAndDescription9: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.editDateAndDescription9.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription9, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.editDateAndDescription9.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription9)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.editDateAndDescription9.rawValue] = nil
            }
        }
    }
    
    public var encodedBy: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.encodedBy.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .encodedBy, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.encodedBy.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.encodedBy)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.encodedBy.rawValue] = nil
            }
        }
    }
    
    public var encodingTool: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.encodingTool.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .encodingTool, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.encodingTool.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.encodingTool)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.encodingTool.rawValue] = nil
            }
        }
    }
    
    public var executiveProducer: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.executiveProducer.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .executiveProducer, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.executiveProducer.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.executiveProducer)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.executiveProducer.rawValue] = nil
            }
        }
    }
    
    public var format: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.format.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .format, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.format.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.format)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.format.rawValue] = nil
            }
        }
    }
    
    public var filmMakerUrl: String? {
        get {
            if let atom = metadataAtoms[StringMetadataIdentifier.filmMakerUrl.rawValue] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .filmMakerUrl, stringValue: new)
                    metadataAtoms[StringMetadataIdentifier.filmMakerUrl.rawValue] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.filmMakerUrl)")
                }
            } else {
                metadataAtoms[StringMetadataIdentifier.filmMakerUrl.rawValue] = nil
            }
        }
    }
}
