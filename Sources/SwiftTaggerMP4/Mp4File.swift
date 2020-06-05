//
//  Mp4File.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import AVFoundation

public struct Mp4File {
    
    public let location: URL
    var asset: AVAsset
    var writingInProgress: Bool = false
    
    public init(location: URL) throws {
        let validExtensions = ["mp4","aac", "m4a", "m4b"]
        if validExtensions.contains(
            location.pathExtension.lowercased()) {
            self.location = location
        } else {
            throw Mp4File.Error.InvalidFileFormat
        }
        self.asset = AVAsset(url: location)
    }
    
    public mutating func write(using tag: Tag, writingTo url: URL, fileType: AVFileType) throws {
        var error: Bool = false
        var inProgress: Bool = false

        let exportSession = AVAssetExportSession(
            asset: self.asset,
            presetName: AVAssetExportPresetPassthrough)
        exportSession?.outputURL = url
        exportSession?.outputFileType = fileType
        exportSession?.metadata = tag.metadata
        exportSession?.exportAsynchronously(completionHandler: {
            inProgress = true
            if exportSession?.status == .failed {
                error = true
            }
            inProgress = false
        })

        if error == true {
            throw Mp4File.Error.WritingError
        }
        writingInProgress = inProgress
    }
}
