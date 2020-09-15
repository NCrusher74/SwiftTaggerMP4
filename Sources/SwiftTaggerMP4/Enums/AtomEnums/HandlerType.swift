/*
  HandlerType.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
/// A list of handler types encountered when parsing a `hdlr` atom
enum HandlerType: String {
    /// Encountered when parsing a `hdlr` atom track
    case mhlr
    /// Encountered when parsing a `hdlr` atom in a track
    case dhlr
    /// Encountered when parsing Quicktime-compliant metadata
    case mdta
    /// Encountered when parsing MP4v2 metadata
    case mdir
    case unknown
}
