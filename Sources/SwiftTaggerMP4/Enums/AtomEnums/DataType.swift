//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 7/15/20.
//

import Foundation

public enum DataType: Int {
    case reserved = 0
    /// Without any count or NULL terminator
    case utf8 = 1
    /// Also known as UTF-16BE
    case utf16 = 2
    /// Deprecaed unless it is needed for special Japanese characters
    case sJIS = 3
    /// Variant storage of a string for sorting only
    case utf8Sort = 4
    /// Variant storage of a string for sorting only
    case utf16Sort = 5
    /// the HTML file header specifies which HTML version
    case html = 6
    /// the XML header must identify the DTD or schemas
    case xml = 7
    /// also known as GUID; stored as 16 bytes in binary (valid as an ID)
    case uuid = 8
    /// stored as UTF-8 text (valid as an ID)
    case isrc = 9
    /// stored as UTF-8 text (valid as an ID)
    case mi3p = 10
    /// deprecated
    case gif = 12
    /// In a JFIF wrapper
    case jpeg = 13
    /// In a PNG wrapper
    case png = 14
    /// absolute, in UTF-8 characters
    case url = 15
    /// in milliseconds, 32-bit integer
    case duration = 16
    /// in UTC, counting seconds since midnight, January 1, 1904; 32 or 64-bits
    case dateTime = 17
    /// a list of enumerated values, see #Genre
    case genres = 18
    /// A big-endian signed integer in 1,2,3 or 4 bytes.
    /// This data type is not supported in Timed Metadata Media. Use one of the fixed-size signed integer data types (that is, type codes 65, 66, or 67) instead.
    case signedIntBE = 21
    /// A big-endian unsigned integer in 1,2,3 or 4 bytes; size of value determines integer size
    /// Note: This data type is not supported in Timed Metadata Media. Use one of the fixed-size unsigned integer data types (that is, type codes 75, 76, or 77) instead.
    case unsignedIntBE = 22
    /// A big-endian 32-bit floating point value (IEEE754)
    case float32BE = 23
    /// RIAA parental advisory; { -1=no, 1=yes, 0=unspecified }, 8-bit ingteger
    /// NOTE: Apple documentation defines this is 64-bit float BE, but Mp4v2 says it's the RIAA Advisory
    case riaaParentalAdvisory = 24
    /// Universal Product Code, in text UTF-8 format (valid as an ID)
    case upc = 25
    /// Windows bitmap format graphics
    case bmp = 27
    /// QuickTime Metadata atom. A block of data having the structure of the Metadata atom defined in this specification
    case quickTimeMetadata = 28
    /// 8-bit Signed Integer
    case signedInt8 = 65
    /// A big-endian 16-bit signed integer
    case signedInt16BE = 66
    /// A big-endian 32-bit signed integer
    case signedInt32BE = 67
    /// A block of data representing a two dimensional (2D) point with 32-bit big-endian floating point x and y coordinates. It has the structure:
    /// struct { BEFloat32 x; BEFloat32 y; }
    case pointF32BE = 70
    /// A block of data representing 2D dimensions with 32-bit big-endian floating point width and height. It has the structure:
    /// struct { BEFloat32 width; BEFloat32 height; }
    case dimensionsF32BE = 71
    /// A block of data representing a 2D rectangle with 32-bit big-endian floating point x and y coordinates and a 32-bit big-endian floating point width and height size. It has the structure:
    /// struct { BEFloat32 x; BEFloat32 y; BEFloat32 width; BEFloat32 height;}
    /// or the equivalent structure:
    /// struct { PointF32 origin; DimensionsF32 size; }
    case rectF32BE = 72
    /// A big-endian 64-bit signed integer
    case signedInt64BE = 74
    /// An 8-bit unsigned integer
    case unsignedInt8 = 75
    /// A big-endian 16-bit unsigned integer
    case unsignedInt16BE = 76
    /// A big-endian 32-bit unsigned integer
    case unsignedInt32BE = 77
    /// A big-endian 64-bit unsigned integer
    case unsignedInt64BE = 78
    /// A block of data representing a 3x3 transformation matrix. It has the structure:
    /// struct { BEFloat64 matrix[3][3]; }
    case affineTransformF64 = 79
    case undefined = 255
}
