////
////  File.swift
////  
////
////  Created by Nolaine Crusher on 8/21/20.
////
//
//import Foundation
//import SwiftMp4MetadataParser
//@available(OSX 10.13, *)
//struct Credits {
//    var involvementList: [InvolvedPersonCredits: [String]]
//    var performanceList: [MusicianAndPerformerCredits: [String]]
//
//    init(parser: SwiftMp4MetadataParser.Mp4File) throws {
//        let metadata = try parser.listMetadataTags()
//        var involvement = [InvolvedPersonCredits: [String]]()
//        var performance = [MusicianAndPerformerCredits: [String]]()
//
//        for item in metadata {
//            let idString = item.identifier
//            
//            if let string = item.value as? String {
//                let components: [String] = string.components(separatedBy: ";")
//                if let credit = InvolvedPersonCredits(rawValue: idString) ??
//                    InvolvedPersonCredits.involvementFromAtomID(idString) {
//                    involvement[credit] = components
//                } else if let credit = MusicianAndPerformerCredits(rawValue: idString) ??
//                    MusicianAndPerformerCredits.performanceFromAtomID(idString) {
//                    performance[credit] = components
//                }
//            } else if let array = item.value as? [String] {
//                if let credit = MusicianAndPerformerCredits.performanceFromAtomID(idString) {
//                    performance[credit] = array
//                }
//            }
//        }
//        self.involvementList = involvement
//        self.performanceList = performance
//    }
//}
