///*
// Moov.Accessors.swift
// SwiftTaggerMP4
// 
// Created by Nolaine Crusher on 8/4/20.
// */
//
//import Foundation
//extension Moov {
//    /// Sorts atoms into order to preserve media offsets
//    /// - Parameters:
//    ///   - identifier: the identifier of the atom being sorted
//    private func sortingGroup(forIdentifier identifier: String) -> Int {
//        switch identifier {
//            case "mvhd":
//                return 1
//            case "trak":
//                return 2
//            default:
//                return 3
//        }
//    }
//    
//    /// The array of root atoms, arranged to preserve media offsets
//    var rearrangedMoovChildren: [Atom] {
//        var rearrangedChildren = self.children
//        rearrangedChildren.sort(
//            by: { sortingGroup(forIdentifier: $0.identifier) < sortingGroup(forIdentifier: $1.identifier) }
//        )
//        return rearrangedChildren
//    }
//    
//    var chapterTrack: Trak? {
//        get {
//            self.tracks.first(where: {$0.tkhd.trackID == chapterTrackID})
//        }
//        set {
//            if let new = newValue {
//                var newTracks: [Trak] = self.tracks.filter({$0.tkhd.trackID == chapterTrackID})
//                newTracks.append(new)
//                self.tracks = newTracks
//            }
//        }
//    }
//    
//    
//    /// Gets and sets a `trackID` property for use in locating or creating a chapter track
//    
//    var chapterTrackID: Int? {
//        get {
//            if let chap = self.soundTrack.tref?.chap {
//                return chap.trackIDs.first
//            } else {
//                return nil
//            }
//        }
//        set {
//            
//        }
//    }
//
//    /// Gets and sets a `udta` atom
//    var udta: Udta? {
//        get {
//            if let udta = children.first(where: {$0.identifier == "udta"}) as? Udta {
//                return udta
//            } else {
//                return nil
//            }
//        }
//        set {
//            if let new = newValue {
//                var newChildren = self.children.filter({$0.identifier != "udta"})
//                newChildren.append(new)
//                self.children = newChildren
//            }
//        }
//    }
//
//}
//
