//
//  Mp4FileError.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation

extension Mp4File {
    
    public enum Error: Swift.Error {
        /// Error thrown when the file is not an MP4 format audio file
        case InvalidFileFormat
        /// Error thrown when trying to use an invalid metadata type for a given tag
        case InvalidMetadataIdentifierForFormat
        /// Error thrown when cover image can't be found
        case ImageDataNotFound
    }
}
