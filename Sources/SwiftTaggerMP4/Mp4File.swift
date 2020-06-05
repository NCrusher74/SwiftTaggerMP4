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
    
    public func read() throws -> Tag {
        return Tag(from: self)
    }
    
    public func write(using tag: Tag, writingTo url: URL) throws {
        let exportSession = AVAssetExportSession(asset: self.asset, presetName: AVAssetExportPresetPassthrough)
        exportSession?.outputURL = url
        exportSession?.outputFileType = AVFileType.m4a
        exportSession?.metadata = tag.metadata
        exportSession?.exportAsynchronously(completionHandler: {
            if exportSession?.error != nil {
                print(exportSession?.error as Any)
            } else {
                print("success creating m4b")
            }
        })
    }
}
