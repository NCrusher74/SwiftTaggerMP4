//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/30/20.
//

import Foundation
extension AtomIdentifier {
    func parse(size: Int, payload: Data) throws -> Atom {
        switch self {
//            case .chpl: return try Chpl(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .co64: return try Co64(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .data: return try DataAtom(id: idString,
//                                            size: size,
//                                            payload: payload)
//            case .dinf: return try Dinf(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .dref: return try Dref(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .edts: return try Edts(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .elng: return try Elng(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .elst: return try Elst(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .ftab: return try Ftab(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .hdlr: return try Hdlr(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .ilst: return try Ilst(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .mdat: return try Mdat(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .mdhd: return try Mdhd(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .mdia: return try Mdia(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .mean: return try Mean(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .meta: return try Meta(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .minf: return try Minf(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .moov: return try Moov(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .mvhd: return try Mvhd(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .name: return try Name(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .nmhd: return try Nmhd(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .stbl: return try Stbl(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .stco: return try Stco(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .stsc: return try Stsc(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .stsd: return try Stsd(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .stsz: return try Stsz(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .stts: return try Stts(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .text: return try Text(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .tkhd: return try Tkhd(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .trak: return try Trak(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .tref: return try Tref(id: idString,
//                                        size: size,
//                                        payload: payload)
//            case .udta: return try Udta(id: idString,
//                                        size: size,
//                                        payload: payload)
            default:
                return try PassThrough(identifier: self.rawValue,
                                       size: size,
                                       payload: payload)
        }
    }
}
