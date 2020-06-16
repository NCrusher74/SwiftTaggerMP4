//
//  Mp4File.swift
//  SwiftTaggerMP4
//
//  Created by Nolaine Crusher on 4/21/20.
//  Copyright © 2020 Nolaine Crusher. All rights reserved.
//

import Foundation
import AVFoundation

@available(OSX 10.13, *)
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
    
    @available(OSX 10.15, *)
    public func write(
        using tag: Tag,
        writingTo url: URL,
        fileType: AVFileType) throws {
        var error: Bool = false
        var inProgress: Bool = true

        if FileManager.default.fileExists(atPath: url.path) {
            try FileManager.default.removeItem(at: url)
        }
        
        let exportSession = AVAssetExportSession(
            asset: self.asset,
            presetName: AVAssetExportPresetPassthrough)
        exportSession?.outputURL = url
        exportSession?.outputFileType = fileType
        exportSession?.metadata = tag.metadata
        exportSession?.exportAsynchronously(completionHandler: {
            if exportSession?.status == .failed {
                error = true
            }
            inProgress = false
        })
        
        while inProgress {
            RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
        }
        
        if error == true {
            throw Mp4File.Error.WritingError
        }
    }
}
