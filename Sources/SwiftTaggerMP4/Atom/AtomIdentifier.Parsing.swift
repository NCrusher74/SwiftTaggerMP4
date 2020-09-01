/*
  AtomIdentifier.Parsing.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
extension AtomIdentifier {
    func parse(size: Int, payload: Data) throws -> Atom {
        switch self {
            case .chpl: return try Chpl(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .co64: return try Co64(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .data: return try DataAtom(identifier: self.rawValue,
                                            size: size,
                                            payload: payload)
            case .dinf: return try Dinf(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .dref: return try Dref(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .edts: return try Edts(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .elng: return try Elng(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .elst: return try Elst(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .ftab: return try Ftab(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .hdlr: return try Hdlr(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .ilst: return try Ilst(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .mdat: return try Mdat(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .mdhd: return try Mdhd(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .mdia: return try Mdia(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .mean: return try Mean(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .meta: return try Meta(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .minf: return try Minf(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .moov: return try Moov(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .mvhd: return try Mvhd(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .name: return try Name(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .nmhd: return try Nmhd(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .stbl: return try Stbl(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .stco: return try Stco(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .stsc: return try Stsc(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .stsd: return try Stsd(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .stsz: return try Stsz(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .stts: return try Stts(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .text: return try Text(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .tkhd: return try Tkhd(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .trak: return try Trak(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .tref: return try Tref(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            case .udta: return try Udta(identifier: self.rawValue,
                                        size: size,
                                        payload: payload)
            default:
                return try PassThrough(identifier: self.rawValue,
                                       size: size,
                                       payload: payload)
        }
    }
}
