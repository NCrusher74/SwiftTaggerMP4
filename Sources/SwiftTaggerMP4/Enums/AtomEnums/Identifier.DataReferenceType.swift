/*
  Identifier.DataReferenceType.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
/// Types encountered when parsing a data reference `dref` parent atom
enum DataReferenceType: String {
    /// Data reference is a Macintosh alias. An alias contains information about the file it refers to, including its full path name.
    case alis
    /// Data reference is a Macintosh alias. Appended to the end of the alias is the resource type (stored as a 32-bit integer) and ID (stored as a 16-bit signed integer) to use within the specified file. This data reference type is deprecated in the QuickTime file format. This information is intended to document existing content containing 'rsrc’ data references and should not be used for new development.
    case rsrc
    /// A C string that specifies a URL. There may be additional data after the C string.
    case url = "url "
}

extension DataReferenceType {
    func parse(size: Int, payload: Data) throws -> Atom {
        return try DrefSubatom(identifier: self.rawValue,
                               size: size,
                               payload: payload)
    }
}
