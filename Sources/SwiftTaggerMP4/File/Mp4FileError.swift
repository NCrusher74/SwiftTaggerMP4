//
//  Mp4FileError.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation

extension Mp4File {
    
    enum Error: Swift.Error {
        /// Error thrown when the file is not an MP4 format audio file
        case InvalidFileFormat
        /// Error thrown when trying to use an invalid metadata type for a given tag
        case InvalidMetadataIdentifierForFormat
        /// Error thrown when cover image can't be found
        case ImageDataNotFound
        ///
        case UnableToInitializeAtoms
        
        
        
        /// Error thrown when required information cannot be parsed from the `mvhd` atom
        case InvalidMovieHeaderData
        /// Error thrown when required information cannot be parsed from the `tkhd` atom
        case InvalidTrackHeaderData
        /// Error thrown when required information cannot be parsed from the `mdhd` atom
        case InvalidMediaHeaderData
        /// Error thrown when writing operation fails
        case OutputFailure
        /// Error thrown when the metadata format is unrecognized
        case UnsupportedMetadataFormat
        /// Error thrown when the image format is unsupported
        case UnsupportedImageFormat
        /// Error thrown when the image cannot be read
        case ImageParsingFailure
        /// Error thrown when extraction of media data fails
        case UnableToLocateMediaData
        /// Error thrown when creating chapter atoms fails
        case UnableToBuildChapterAtoms
        /// Error thrown when a metadata-containing atom cannot be initialized
        case UnableToInitializeMetadataAtom
        /// Error thrown when parser is unable to determine the data type of cover image file
        case UnableToDetermineImageFormat
        /// Error throws when parser is unable to set a cover image atom
        case UnableToSetCoverImage
        /// Error thrown when a required root atom is missing
        case MoovAtomNotFound
        /// Error thrown when a required atom is missing
        case dac3AtomNotFound
        /// Error thrown when a required root atom is missing
        case MdatAtomNotFound
        /// Error thrown when a required atom is missing
        case MvhdAtomNotFound
        /// Error thrown when a required atom is missing
        case TrakAtomNotFound
        /// Error thrown when a required atom is missing
        case TkhdAtomNotFound
        /// Error thrown when a required atom is missing
        case MdiaAtomNotFound
        /// Error thrown when a required atom is missing
        case ElstAtomNotFound
        /// Error thrown when a required atom is missing
        case MdhdAtomNotFound
        /// Error thrown when a required atom is missing
        case HdlrAtomNotFound
        /// Error thrown when a required atom is missing
        case MinfAtomNotFound
        /// Error thrown when a required atom is missing
        case DinfAtomNotFound
        /// Error thrown when a required atom is missing
        case DrefAtomNotFound
        /// Error thrown when a required atom is missing
        case MediaInformationHeaderAtomNotFound
        /// Error thrown when a required atom is missing
        case StblAtomNotFound
        /// Error thrown when a required atom is missing
        case GminAtomNotFound
        /// Error thrown when a required atom is missing
        case FrmaAtomNotFound
        /// Error thrown when a required atom is missing
        case TfhdAtomNotFound
        /// Error thrown when a required atom is missing
        case EsdsAtomNotFound
        /// Error thrown when a required atom is missing
        case TrexAtomNotFound
        /// Error thrown when a required atom is missing
        case OhdrAtomNotFound
        /// Error thrown when a required atom is missing
        case MfhdAtomNotFound
        /// Error thrown when a required atom is missing
        case Dac3AtomNotFound
        /// Error thrown when a required atom is missing
        case DamrAtomNotFound
        /// Error thrown when a required atom is missing
        case IlstAtomNotFound
        /// Error thrown when a required atom is missing
        case DataAtomNotFound
        /// Error thrown when a required atom is missing
        case MeanAtomNotFound
        /// Error thrown when a required atom is missing
        case NameAtomNotFound
        /// Error thrown when a required atom is missing
        case StsdAtomNotFound
        /// Error thrown when a required atom is missing
        case StscAtomNotFound
        /// Error thrown when a required atom is missing
        case ChunkOffsetAtomNotFound
        /// Error thrown when a required atom is missing
        case StszAtomNotFound
        /// Error thrown when a required atom is missing
        case SttsAtomNotFound

    }
}
