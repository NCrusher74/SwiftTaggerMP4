//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 9/5/20.
//

import Foundation

enum MetadataAtomError: Error {
    /// Error thrown when a required atom is missing
    case DataAtomNotFound
    /// Error thrown when a required atom is missing
    case MeanAtomNotFound
    /// Error thrown when a required atom is missing
    case NameAtomNotFound
    /// Error thrown when a metadata-containing atom cannot be initialized
    case UnableToInitializeMetadataAtom(String)
    /// Error thrown when parser is unable to determine the data type of cover image file
    case UnableToDetermineImageFormat
    /// Error throws when parser is unable to set a cover image atom
    case UnableToSetCoverImage
    /// Error thrown when the image format is unsupported
    case UnsupportedImageFormat
    /// Error thrown when the image cannot be read
    case ImageParsingFailure
    /// Error thrown when the metadata format is unrecognized
    case UnsupportedMetadataFormat(String)
    /// Error thrown when trying to use an invalid metadata type for a given tag
    case InvalidMetadataIdentifierForFormat
    /// Error thrown when cover image can't be found
    case ImageDataNotFound
    case UnableToParseDataToString(String)
    case UnableToConvertStringContentToInteger(String)
}
