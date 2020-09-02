/*
 Identifier.TrackReferenceType.swift
 
 
 Created by Nolaine Crusher on 8/30/20.
 */

import Foundation
enum TrackReferenceType: String, CaseIterable {
    case cdsc
    case chap
    case clcp
    case dpnd
    case fall
    case folw
    case forc
    case hint
    case ipir
    case mpod
    case scpt
    case ssrc
    case sync
    case tmcd
}

extension TrackReferenceType {
    func parse(size: Int, payload: Data) throws -> Atom {
        return try TrefSubatom(identifier: self.rawValue,
                               size: size,
                               payload: payload)
    }
}
