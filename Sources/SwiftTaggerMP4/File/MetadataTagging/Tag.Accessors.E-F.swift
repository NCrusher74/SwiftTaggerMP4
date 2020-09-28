//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation
extension Tag {
    var editDateAndDescription1: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription1] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription1, stringValue: new)
                    metadataAtoms[.editDateAndDescription1] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription1)")
                }
            } else {
                metadataAtoms[.editDateAndDescription1] = nil
            }
        }
    }
    
    var editDateAndDescription2: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription2] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription2, stringValue: new)
                    metadataAtoms[.editDateAndDescription2] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription2)")
                }
            } else {
                metadataAtoms[.editDateAndDescription2] = nil
            }
        }
    }
    
    var editDateAndDescription3: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription3] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription3, stringValue: new)
                    metadataAtoms[.editDateAndDescription3] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription3)")
                }
            } else {
                metadataAtoms[.editDateAndDescription3] = nil
            }
        }
    }
    
    var editDateAndDescription4: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription4] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription4, stringValue: new)
                    metadataAtoms[.editDateAndDescription4] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription4)")
                }
            } else {
                metadataAtoms[.editDateAndDescription4] = nil
            }
        }
    }
    
    var editDateAndDescription5: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription5] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription5, stringValue: new)
                    metadataAtoms[.editDateAndDescription5] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription5)")
                }
            } else {
                metadataAtoms[.editDateAndDescription5] = nil
            }
        }
    }
    
    var editDateAndDescription6: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription6] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription6, stringValue: new)
                    metadataAtoms[.editDateAndDescription6] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription6)")
                }
            } else {
                metadataAtoms[.editDateAndDescription6] = nil
            }
        }
    }
    
    var editDateAndDescription7: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription7] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription7, stringValue: new)
                    metadataAtoms[.editDateAndDescription7] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription7)")
                }
            } else {
                metadataAtoms[.editDateAndDescription7] = nil
            }
        }
    }
    
    var editDateAndDescription8: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription8] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription8, stringValue: new)
                    metadataAtoms[.editDateAndDescription8] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription8)")
                }
            } else {
                metadataAtoms[.editDateAndDescription8] = nil
            }
        }
    }
    
    var editDateAndDescription9: String? {
        get {
            if let atom = metadataAtoms[.editDateAndDescription9] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .editDateAndDescription9, stringValue: new)
                    metadataAtoms[.editDateAndDescription9] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.editDateAndDescription9)")
                }
            } else {
                metadataAtoms[.editDateAndDescription9] = nil
            }
        }
    }
    
    var encodedBy: String? {
        get {
            if let atom = metadataAtoms[.encodedBy] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .encodedBy, stringValue: new)
                    metadataAtoms[.encodedBy] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.encodedBy)")
                }
            } else {
                metadataAtoms[.encodedBy] = nil
            }
        }
    }
    
    var encodingTool: String? {
        get {
            if let atom = metadataAtoms[.encodingTool] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .encodingTool, stringValue: new)
                    metadataAtoms[.encodingTool] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.encodingTool)")
                }
            } else {
                metadataAtoms[.encodingTool] = nil
            }
        }
    }
    
    var executiveProducer: String? {
        get {
            if let atom = metadataAtoms[.executiveProducer] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .executiveProducer, stringValue: new)
                    metadataAtoms[.executiveProducer] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.executiveProducer)")
                }
            } else {
                metadataAtoms[.executiveProducer] = nil
            }
        }
    }
    
    var format: String? {
        get {
            if let atom = metadataAtoms[.format] as? StringMetadataAtom {
                return atom.stringValue
            } else {
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    let atom = try StringMetadataAtom(identifier: .format, stringValue: new)
                    metadataAtoms[.format] = atom
                } catch {
                    fatalError("WARNING: Unable to initialize metadata atom with identifier \(StringMetadataIdentifier.format)")
                }
            } else {
                metadataAtoms[.format] = nil
            }
        }
    }    
}
