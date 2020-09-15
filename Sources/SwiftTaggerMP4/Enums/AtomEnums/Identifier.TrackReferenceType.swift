/*
 Identifier.TrackReferenceType.swift
 
 
 Created by Nolaine Crusher on 8/30/20.
 */

import Foundation
/// Types encountered when parsing a track reference `tref` parent atom
enum TrackReferenceType: String, CaseIterable {
    /// The track reference is contained in a timed metadata track
    case cdsc
    /// Chapter or scene list. Usually references a text track
    case chap
    /// Closed caption. In any track, this identifies a closed captioning track that contains text that is appropriate for the referring track.
    case clcp
    /// This track has an MPEG-4 dependency on the referenced track
    case dpnd
    /// In a sound track, this references a track in a different format but with identical content, if one exists
    case fall
    /// In a sound track, this references a subtitle track that is to be used as the sound track’s default subtitle track. If the subtitle track is part of a subtitle track pair, this should reference the the forced subtitle track of the pair.
    case folw
    /// Forced subtitle track. In the regular track of a subtitle track pair, this references the forced track.
    case forc
    /// The referenced tracks contain the original media for this hint track.
    case hint
    /// This track contains IPI declarations for the referenced track
    case ipir
    /// This track is an OD track which uses the referenced track as an included elementary stream track
    case mpod
    /// Transcript. Usually references a text track.
    case scpt
    /// Non-primary source. Indicates that the referenced track should send its data to this track, rather than presenting it.
    case ssrc
    /// Synchronization. Usually between a video and sound track. Indicates that the two tracks are synchronized. 
    case sync
    /// Time code. Usually references a time code track.
    case tmcd
}

extension TrackReferenceType {
    func parse(size: Int, payload: Data) throws -> Atom {
        return try TrefSubatom(identifier: self.rawValue,
                               size: size,
                               payload: payload)
    }
}
