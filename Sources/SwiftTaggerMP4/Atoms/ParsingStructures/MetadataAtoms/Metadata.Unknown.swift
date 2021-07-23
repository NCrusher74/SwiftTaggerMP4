//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/2/20.
//

import Foundation

/// A freeform metadata atom with the identifier `----`
///
/// Though the content of these atoms may be presented as integers, dates, or any number of other types, typically it is stored as a string
public class UnknownMetadataAtom: Atom {
    public override var description: String { stringValue }
    
    /// The unrecognized identifier of the atom as a freeform string
    public var name: String
    /// The content of the atom
    public var stringValue: String
    
    /// Initialize a freeform atom by parsing from file content
    override init(identifier: String,
                  size: Int,
                  payload: Data) throws {
        var data = payload
        
        var children = [Atom]()
        while !data.isEmpty {
            if let child = try data.extractAndParseToAtom() {
                children.append(child)
            }
        }
        
        // required sub-atoms are `mean`, `name`, and `data`
        guard children.contains(where: {$0.identifier == "mean"}) else {
            throw MetadataAtomError.MeanAtomNotFound
        }

        if let nameAtom = children.first(where: {$0.identifier == "name"}) as? Name {
            self.name = nameAtom.stringValue
        } else {
            throw MetadataAtomError.NameAtomNotFound
        }
        
        if let dataAtom = children.first(where: {$0.identifier == "data"}) as? DataAtom {
            if dataAtom.dataType == .utf8 ||
                dataAtom.dataType == .utf8Sort ||
                dataAtom.dataType == .uuid ||
                dataAtom.dataType == .isrc ||
                dataAtom.dataType == .url ||
                dataAtom.dataType == .reserved {
                self.stringValue = dataAtom.data.stringUtf8 ?? ""
            } else if dataAtom.dataType == .utf16 || dataAtom.dataType == .utf16Sort {
                self.stringValue = String(data: dataAtom.data, encoding: .utf16) ?? ""
            } else {
                throw MetadataAtomError.UnsupportedMetadataFormat("UnsupportedMetadataAtomError on atom with identifier \(identifier)")
            }
        } else {
            throw MetadataAtomError.DataAtomNotFound
        }
        
        try super.init(identifier: identifier,
                       size: size,
                       children: children)
    }
    
    
    /// Initialize a freeform atom for use in building a metadata list
    init(name: String, stringValue: String) throws {
        let mean = try Mean()
        let nameAtom = try Name(atomName: name)
        self.name = name
        let dataAtom = try DataAtom(stringValue: stringValue)
        self.stringValue = stringValue
                
        let size = mean.size + nameAtom.size + dataAtom.size + 8
        try super.init(identifier: "----",
                       size: size,
                       children: [mean, nameAtom, dataAtom])
    }

    /// Sorts atoms into order to preserve media offsets
    /// - Parameters:
    ///   - identifier: the identifier of the atom being sorted
    private func sortingGroup(forIdentifier identifier: String) -> Int {
        switch identifier {
            case "mean": return 1
            case "name": return 2
            default: return 3
        }
    }
    
    /// The array of root atoms, arranged to preserve media offsets
    var sortedAtoms: [Atom] {
        var rearrangedAtoms = self.children
        rearrangedAtoms.sort(
            by: { sortingGroup(forIdentifier: $0.identifier) < sortingGroup(forIdentifier: $1.identifier) }
        )
        return rearrangedAtoms
    }
    
   /// Converts the atom's contents to Data when encoding the atom to write to file.
    override var contentData: Data {
        let reserve = children.map({$0.size}).sum()
        var data = Data()
        data.reserveCapacity(reserve)
        data.append(contentsOf: sortedAtoms.flatMap({$0.encode}))
        
        return data
    }

    var mean: Mean {
        get {
            if let atom = self[.mean] as? Mean {
                return atom
            } else {
                fatalError("Required child 'mean' is missing from unknown atom with name '\(self.name)'")
            }
        }
        set {
            self[.mean] = newValue
        }
    }

    var nameAtom: Name {
        get {
            if let atom = self[.name] as? Name {
                return atom
            } else {
                fatalError("Required child 'name' is missing from unknown atom with name '\(self.name)'")
            }
        }
        set {
            self[.name] = newValue
        }
    }

    var data: DataAtom {
        get {
            if let atom = self[.data] as? DataAtom {
                return atom
            } else {
                fatalError("Required child 'data' is missing from unknown atom with name '\(self.name)'")
            }
        }
        set {
            self[.data] = newValue
        }
    }
}
