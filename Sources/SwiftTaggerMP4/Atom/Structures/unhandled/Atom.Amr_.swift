///*
// Amr.swift
// SwiftTaggerMP4
// 
// Created by Nolaine Crusher on 8/4/20.
// */
//
//import Foundation
//
///// A class representing a `amr` atom in an `Mp4File`'s atom structure
/////
///// **Not currently implemented**
//class Amr: Atom {
//    
//    private var reserved1: Data
//    var dataReferenceIndex: Int
//    private var reserved2: Data
//    /*
//    // property reserved2 has non-zero fixed values
//    static uint8_t reserved2[16] = {
//    0x00, 0x00, 0x00, 0x00,
//    0x00, 0x00, 0x00, 0x00,
//    0x00, 0x02, 0x00, 0x10,
//    0x00, 0x00, 0x00, 0x00,
//    };
//    m_pProperties[2]->SetReadOnly(false);
//    ((MP4BytesProperty*)m_pProperties[2])->
//    SetValue(reserved2, sizeof(reserved2));
//    m_pProperties[2]->SetReadOnly(true);
//}
//    */
//    var timeScale: Int
//    private var reserved3: Data
//    
//    override init(identifier: String, size: Int, payload: Data) throws {
//        var data = payload
//        self.reserved1 = data.extractFirst(6)
//        self.dataReferenceIndex = data.extractTo16BitInt()
//        self.reserved2 = data.extractFirst(8)
//        self.timeScale = data.extractTo16BitIntViaDouble()
//        self.reserved3 = data.extractFirst(4)
//        
//        var children = [Atom]()
//        while !data.isEmpty {
//            if let child = try data.extractAndParseToAtom() {
//            children.append(child)
//            }
//        }
//        try super.init(identifier: identifier,
//                   size: size,
//                   payload: payload,
//                   children: children)
//
//        guard children.contains(where: {$0.identifier == "damr"}) else {
//            throw Mp4File.Error.DamrAtomNotFound
//        }
//    }
//    
//    override var contentData: Data {
//        var data = Data()
//        data.append(self.reserved1)
//        data.append(self.dataReferenceIndex.beDataFrom16BitInt)
//        data.append(self.reserved2)
//        data.append(self.timeScale.beDataFrom16BitInt)
//        data.append(self.reserved3)
//        return data
//    }
//}
