/*
  Identifier.Atom.swift
  

  Created by Nolaine Crusher on 8/30/20.
*/

import Foundation
/// Known atom identifiers, excluding track and data reference types and metadata atom identifiers
public enum AtomIdentifier: String, CaseIterable {
    /// AC-3 audio
    case ac3 = "ac-3"
    case amr = "amr "
    /// Apple lossless audio codec
    case alac
    /// Advanced Video Coding
    case avc1
    /// AVC Configuration
    case avcC
    /// Bitrate
    case bitr
    /// Bit-rate information
    case btrt
    case burl
    /// Chapter list (Nero chaptering)
    case chpl
    /// 64-bit chunk offset
    case co64
    /// ICC_Profile ColorRepresentation
    case colr
    /// country
    case ctry
    /// Composition time-to-sample
    case ctts
    case d263
    /// Decoder specific info for AC-3 audio
    case dac3
    /// Decode Config
    case damr
    /// contains the data of a `ilst` metadata atom
    case data
    /// Immediate Data Bytes
    case dimm
    /// data information box, container
    case dinf
    /// Largest Packet Duration
    case dmax
    /// Media Track Bytes
    case dmed
    /// data reference box, declares source(s) of media data in track
    case dref
    /// repeated data bytes
    case drep
    /// edit list container
    case edts
    /// extended language atom
    case elng
    /// edit list
    case elst
    /// Encrypted/Protected audio
    case enca
    /// Encrypted/protected video
    case encv
    /// Elementary stream descriptor
    case esds
    /// free space
    case free
    /// original format
    case frma
    /// Font table
    case ftab
    /// file type and compatibility
    case ftyp
    /// General media header
    case gmhd
    /// General media information
    case gmin
    /// handler, declares the media (handler) type
    case hdlr
    /// hint media header, overall information (hint track only)
    case hmhd
    /// hint info
    case hnti
    case href
    case iKMS
    /// IPMP Information box
    case imif
    /// Item list (Metadata)
    case ilst
    /// Object Descriptor container box
    case iods
    case iSFM
    case keys
    /// language
    case lang
    /// Track pre-load definitions
    case load
    /// Maximum data rate
    case maxr
    /// media data container
    case mdat
    /// media header, overall information about the media
    case mdhd
    /// container for the media information in a track
    case mdia
    ///
    case mean
    /// Metadata container
    case meta
    /// movie fragment header
    case mfhd
    case mhdr
    /// media information container
    case minf
    /// movie fragment
    case moof
    /// container for all the meta-data
    case moov
    /// MPEG-4 Audio
    case mp4a
    /// MPEG-4 Systems
    case mp4s
    /// MPEG-4 Video
    case mp4v
    /// movie extends box
    case mvex
    /// movie header, overall declarations
    case mvhd
    case name
    /// Null media header, overall information (some tracks only)
    case nmhd
    /// Number of packets
    case nump
    /// OMA DRM KMS protection scheme
    case odkm
    /// OMA DRM Common headers
    case ohdr
    /// Pixel aspect ratio
    case pasp
    /// Payload type
    case payt
    /// Purchase Info
    case pinf
    /// Largest packet size
    case pmax
    /// Preview container
    case pnot
    /// Print-to-Video
    case ptv = "ptv "
    /// Realtime Streaming Protocol
    case rtp = "rtp "
    /// ITU H.263 video (3GPP format)
    case s263
    /// Narrowband AMR voice
    case samr
    /// Wideband AMR voice
    case sawb
    /// Sample To Group
    case sbgp
    /// scheme information box
    case schi
    /// Scheme type box
    case schm
    /// Streaming Data Protocol
    case sdp = "sdp "
    /// Independent and Disposable Samples
    case sdtp
    /// Sample Group Description
    case sgpd
    /// protection scheme information box
    case sinf
    /// free space
    case skip
    /// sound media header, overall information (sound track only)
    case smhd
    /// Sequence Number Random Offset
    case snro
    /// sample table box, container for the time/space map
    case stbl
    /// chunk offset, partial data-offset information
    case stco
    /// sample degradation priority
    case stdp
    /// sample-to-chunk, partial data-offset information
    case stsc
    /// sample descriptions (codec types, initialization etc.)
    case stsd
    /// shadow sync sample table
    case stsh
    /// sync sample table (random access points)
    case stss
    /// sample sizes (framing)
    case stsz
    /// (decoding) time-to-sample
    case stts
    /// compact sample sizes (framing)
    case stz2
    /// Media characteristic optionally present in Track user data
    case tagc
    /// Text handler
    case text
    /// Track fragment header
    case tfhd
    case tgas
    /// timeScale
    case tims
    /// Track header, overall information about the track
    case tkhd
    /// Maximum transmission time
    case tmax
    /// Minimum transmission time
    case tmin
    /// Track name
    case tnam
    /// Total Bytes - No RTP Headers
    case tpyl
    /// Track fragment
    case traf
    /// Container for an individual track or stream
    case trak
    /// track reference container
    case tref
    /// track extends defaults
    case trex
    /// total bytes
    case trpy
    /// track fragment run
    case trun
    /// Timestamp Random Offset
    case tsro
    /// Timed Text stream
    case tx3g
    /// user-data
    case udta
    /// URN data location
    case urn = "urn "
    /// video media header, overall information (video track only)
    case vmhd
    /// Wave audio atom
    case wave
    /// Expansion space reservation
    case wide    
}
