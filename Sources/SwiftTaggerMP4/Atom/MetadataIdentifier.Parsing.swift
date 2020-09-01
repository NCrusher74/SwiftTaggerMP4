/*
  MetadataIdentifier.Parsing.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation

extension MetadataIdentifier {
    func parse(size: Int, payload: Data)
        throws -> Atom {
            switch self {
                case .string(let id):
                    return try StringMetadataAtom(
                        identifier: id.rawValue,
                        size: size,
                        payload: payload)
                case .integer(let id):
                    return try IntegerMetadataAtom(
                        identifier: id.rawValue,
                        size: size,
                        payload: payload)
                case .image(let identifier):
                    return try ImageMetadataAtom(
                        identifier: identifier,
                        size: size,
                        payload: payload)
                case .discNumber(let identifier),
                     .trackNumber(let identifier):
                    return try PartAndTotalMetadataAtom(
                    identifier: identifier,
                    size: size,
                    payload: payload)
                case .podcastFeed(let identifier):
                    return try StringMetadataAtom(
                        identifier: identifier,
                        size: size,
                        payload: payload)
            }
    }
}
