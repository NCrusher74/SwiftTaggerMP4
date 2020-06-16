/*
 
 TestMedia.swift
 SwiftTaggerMP4
 
 Copyright ©2020 Nolaine Crusher. All rights reserved.
 
 */

import Foundation
import SwiftTaggerMP4

let testMediaDirectory = URL(fileURLWithPath: #file)
    .deletingLastPathComponent()
    .appendingPathComponent("TestMedia")

enum fileVersion {
    case withMeta
    case noMeta
    case chapterized
    case cover
    
    var url: URL {
        switch self {
            case .withMeta: return testMediaDirectory.appendingPathComponent("mp4-full-meta.m4a")
            case .noMeta: return testMediaDirectory.appendingPathComponent("mp4-nometa.m4a")
            case .chapterized: return testMediaDirectory.appendingPathComponent("mp4-chapterized")
            case .cover: return testMediaDirectory.appendingPathComponent("samplecover-green.jpg")
        }
    }
}

func mp4File(withMeta: Bool, chaptered: Bool) throws -> Mp4File {
    if withMeta && chaptered {
        return try Mp4File(location: fileVersion.chapterized.url)
    } else if !withMeta && !chaptered {
        return try Mp4File(location: fileVersion.noMeta.url)
    } else {
        return try Mp4File(location: fileVersion.withMeta.url)
    }
}

func tag(withMeta: Bool, chaptered: Bool) throws -> Tag {
    if withMeta && chaptered {
        return try Tag(from: mp4File(withMeta: true, chaptered: true))
    } else if !withMeta && !chaptered {
        return try Tag(from: mp4File(withMeta: false, chaptered: false))
    } else {
        return try Tag(from: mp4File(withMeta: true, chaptered: false))
    }
}

@available(OSX 10.12, *)
func tempDirectory() throws -> URL {
    let tempDirectory = FileManager.default.temporaryDirectory
        .appendingPathComponent("SwiftTaggerTemp",
                                isDirectory: true)
    try FileManager.default.createDirectory(
        at: tempDirectory,
        withIntermediateDirectories: true)
    return tempDirectory
}

@available(OSX 10.12, *)
func emptyDirectory() throws {
    try FileManager.default.removeItem(at: tempDirectory())
}

@available(OSX 10.12, *)
func localDirectory(fileName: String, fileExtension: String) throws -> URL {
    let home = FileManager.default.homeDirectoryForCurrentUser
    let desktopPath = "Desktop/TestOutput"
    try FileManager.default.createDirectory(
        at: home.appendingPathComponent(desktopPath, isDirectory: true),
        withIntermediateDirectories: true)
    return home.appendingPathComponent(desktopPath, isDirectory: true).appendingPathComponent(fileName).appendingPathExtension(fileExtension)
}
