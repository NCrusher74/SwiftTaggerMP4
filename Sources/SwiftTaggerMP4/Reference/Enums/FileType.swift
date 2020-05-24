//
//  FileType.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 5/3/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation

public enum FileType: String {
    case threeG2A = "3g2a"
    case threeG2B = "3g2b"
    case threeG2C = "3g2c"
    case threeGE6 = "3ge6"
    case threeGE7 = "3ge7"
    case threeGG6 = "3gg6"
    case threeGP1 = "3gp1"
    case threeGP2 = "3gp2"
    case threeGP3 = "3gp3"
    case threeGP4 = "3gp4"
    case threeGP5 = "3gp5"
    case threeGP6 = "3gp6"
    case threeGP7 = "3gp7"
    case CAEP
    case CDes
    case F4A
    case F4B
    case F4P
    case F4V
    case JP2
    case JP20
    case KDDI
    case M4A
    case M4B
    case M4P
    case M4V
    case M4VH
    case M4VP
    case MPPI
    case MSNV
    case NDAS
    case NDSC
    case NDSH
    case NDSM
    case NDSP
    case NDSS
    case NDXC
    case NDXH
    case NDXM
    case NDXP
    case NDXS
    case ROSS
    case XAVC
    case aax
    case avc1
    case avif
    case caqv
    case crx
    case da0a
    case da0b
    case da1a
    case da1b
    case da2a
    case da2b
    case da3a
    case da3b
    case dmb1
    case dmpf
    case drc1
    case dv1a
    case dv1b
    case dv2a
    case dv2b
    case dv3a
    case dv3b
    case dvr1
    case dvt1
    case heic
    case heix
    case hevc
    case isc2
    case iso2
    case isom
    case jpm
    case jpx
    case mj2s
    case mjp2
    case mmp4
    case mp21
    case mp41
    case mp42
    case mp71
    case mqt
    case msf1
    case odcf
    case opf2
    case opx2
    case pana
    case qt
    case sdv
    case ssc1
    case ssc2
    
    var fullName: String {
        switch self {
            case .threeG2A : return "3GPP2 Media (.3G2) compliant with 3GPP2 C.S0050-0 V1.0"
            case .threeG2B : return "3GPP2 Media (.3G2) compliant with 3GPP2 C.S0050-A V1.0.0"
            case .threeG2C : return "3GPP2 Media (.3G2) compliant with 3GPP2 C.S0050-B v1.0"
            case .threeGE6 : return "3GPP (.3GP) Release 6 MBMS Extended Presentations"
            case .threeGE7 : return "3GPP (.3GP) Release 7 MBMS Extended Presentations"
            case .threeGG6 : return "3GPP Release 6 General Profile"
            case .threeGP1 : return "3GPP Media (.3GP) Release 1 (probably non-existent)"
            case .threeGP2 : return "3GPP Media (.3GP) Release 2 (probably non-existent)"
            case .threeGP3 : return "3GPP Media (.3GP) Release 3 (probably non-existent)"
            case .threeGP4 : return "3GPP Media (.3GP) Release 4"
            case .threeGP5 : return "3GPP Media (.3GP) Release 5"
            case .threeGP6 : return "3GPP Media (.3GP) Release 6 Streaming Servers"
            case .threeGP7 : return "3GPP Media (.3GP) Release 7 Streaming Servers"
            case .CAEP : return "Canon Digital Camera"
            case .CDes : return "Convergent Design"
            case .F4A  : return "Audio for Adobe Flash Player 9+ (.F4A)"
            case .F4B  : return "Audio Book for Adobe Flash Player 9+ (.F4B)"
            case .F4P  : return "Protected Video for Adobe Flash Player 9+ (.F4P)"
            case .F4V  : return "Video for Adobe Flash Player 9+ (.F4V)"
            case .JP2  : return "JPEG 2000 Image (.JP2) [ISO 15444-1 ?]"
            case .JP20 : return "Unknown, from GPAC samples (prob non-existent)"
            case .KDDI : return "3GPP2 EZmovie for KDDI 3G cellphones"
            case .M4A  : return "Apple iTunes AAC-LC (.M4A) Audio"
            case .M4B  : return "Apple iTunes AAC-LC (.M4B) Audio Book"
            case .M4P  : return "Apple iTunes AAC-LC (.M4P) AES Protected Audio"
            case .M4V  : return "Apple iTunes Video (.M4V) Video"
            case .M4VH : return "Apple TV (.M4V)"
            case .M4VP : return "Apple iPhone (.M4V)"
            case .MPPI : return "Photo Player, MAF [ISO/IEC 23000-3]"
            case .MSNV : return "MPEG-4 (.MP4) for SonyPSP"
            case .NDAS : return "MP4 v2 [ISO 14496-14] Nero Digital AAC Audio"
            case .NDSC : return "MPEG-4 (.MP4) Nero Cinema Profile"
            case .NDSH : return "MPEG-4 (.MP4) Nero HDTV Profile"
            case .NDSM : return "MPEG-4 (.MP4) Nero Mobile Profile"
            case .NDSP : return "MPEG-4 (.MP4) Nero Portable Profile"
            case .NDSS : return "MPEG-4 (.MP4) Nero Standard Profile"
            case .NDXC : return "H.264/MPEG-4 AVC (.MP4) Nero Cinema Profile"
            case .NDXH : return "H.264/MPEG-4 AVC (.MP4) Nero HDTV Profile"
            case .NDXM : return "H.264/MPEG-4 AVC (.MP4) Nero Mobile Profile"
            case .NDXP : return "H.264/MPEG-4 AVC (.MP4) Nero Portable Profile"
            case .NDXS : return "H.264/MPEG-4 AVC (.MP4) Nero Standard Profile"
            case .ROSS : return "Ross Video"
            case .XAVC : return "Sony XAVC"
            case .aax  : return "Audible Enhanced Audiobook (.AAX)"
            case .avc1 : return "MP4 Base w/ AVC ext [ISO 14496-12:2005]"
            case .avif : return "AV1 Image File Format (.AVIF)"
            case .caqv : return "Casio Digital Camera"
            case .crx  : return "Canon Raw (.CRX)"
            case .da0a : return "DMB MAF w/ MPEG Layer II aud, MOT slides, DLS, JPG/PNG/MNG images"
            case .da0b : return "DMB MAF, extending DA0A, with 3GPP timed text, DID, TVA, REL, IPMP"
            case .da1a : return "DMB MAF audio with ER-BSAC audio, JPG/PNG/MNG images"
            case .da1b : return "DMB MAF, extending da1a, with 3GPP timed text, DID, TVA, REL, IPMP"
            case .da2a : return "DMB MAF aud w/ HE-AAC v2 aud, MOT slides, DLS, JPG/PNG/MNG images"
            case .da2b : return "DMB MAF, extending da2a, with 3GPP timed text, DID, TVA, REL, IPMP"
            case .da3a : return "DMB MAF aud with HE-AAC aud, JPG/PNG/MNG images"
            case .da3b : return "DMB MAF, extending da3a w/ BIFS, 3GPP timed text, DID, TVA, REL, IPMP"
            case .dmb1 : return "DMB MAF supporting all the components defined in the specification"
            case .dmpf : return "Digital Media Project"
            case .drc1 : return "Dirac (wavelet compression), encapsulated in ISO base media (MP4)"
            case .dv1a : return "DMB MAF vid w/ AVC vid, ER-BSAC aud, BIFS, JPG/PNG/MNG images, TS"
            case .dv1b : return "DMB MAF, extending dv1a, with 3GPP timed text, DID, TVA, REL, IPMP"
            case .dv2a : return "DMB MAF vid w/ AVC vid, HE-AAC v2 aud, BIFS, JPG/PNG/MNG images, TS"
            case .dv2b : return "DMB MAF, extending dv2a, with 3GPP timed text, DID, TVA, REL, IPMP"
            case .dv3a : return "DMB MAF vid w/ AVC vid, HE-AAC aud, BIFS, JPG/PNG/MNG images, TS"
            case .dv3b : return "DMB MAF, extending dv3a, with 3GPP timed text, DID, TVA, REL, IPMP"
            case .dvr1 : return "DVB (.DVB) over RTP"
            case .dvt1 : return "DVB (.DVB) over MPEG-2 Transport Stream"
            case .heic : return "High Efficiency Image Format HEVC still image (.HEIC)"
            case .heix : return "High Efficiency Image Format still image (.HEIF)"
            case .hevc : return "High Efficiency Image Format HEVC sequence (.HEICS)"
            case .isc2 : return "ISMACryp 2.0 Encrypted File"
            case .iso2 : return "MP4 Base Media v2 [ISO 14496-12:2005]"
            case .isom : return "MP4 Base Media v1 [IS0 14496-12:2003]"
            case .jpm  : return "JPEG 2000 Compound Image (.JPM) [ISO 15444-6]"
            case .jpx  : return "JPEG 2000 with extensions (.JPX) [ISO 15444-2]"
            case .mj2s : return "Motion JPEG 2000 [ISO 15444-3] Simple Profile"
            case .mjp2 : return "Motion JPEG 2000 [ISO 15444-3] General Profile"
            case .mmp4 : return "MPEG-4/3GPP Mobile Profile (.MP4/3GP) (for NTT)"
            case .mp21 : return "MPEG-21 [ISO/IEC 21000-9]"
            case .mp41 : return "MP4 v1 [ISO 14496-1:ch13]"
            case .mp42 : return "MP4 v2 [ISO 14496-14]"
            case .mp71 : return "MP4 w/ MPEG-7 Metadata [per ISO 14496-12]"
            case .mqt  : return "Sony / Mobile QuickTime (.MQV) US Patent 7,477,830 (Sony Corp)"
            case .msf1 : return "High Efficiency Image Format sequence (.HEIFS)"
            case .odcf : return "OMA DCF DRM Format 2.0 (OMA-TS-DRM-DCF-V2_0-20060303-A)"
            case .opf2 : return "OMA PDCF DRM Format 2.1 (OMA-TS-DRM-DCF-V2_1-20070724-C)"
            case .opx2 : return "OMA PDCF DRM + XBS extensions (OMA-TS-DRM_XBS-V1_0-20070529-C)"
            case .pana : return "Panasonic Digital Camera"
            case .qt  : return "Apple QuickTime (.MOV/QT)"
            case .sdv  : return "SD Memory Card Video"
            case .ssc1 : return "Samsung stereoscopic, single stream"
            case .ssc2 : return "Samsung stereoscopic, dual stream"

        }
    }
}
