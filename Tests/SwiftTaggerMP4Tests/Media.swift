/*
 
 TestMedia.swift
 SwiftTaggerMP4
 
 Copyright ©2020 Nolaine Crusher. All rights reserved.
 
 */

import Foundation
import SwiftTaggerMP4

public let sampleBookCVUrl: URL =
    testMediaDirectory
        .appendingPathComponent("SampleBook")
        .appendingPathExtension("m4b")

public let sampleBookSublerUrl: URL =
    testMediaDirectory
        .appendingPathComponent("mp4_chaptered")
        .appendingPathExtension("m4a")

public let sampleNoMeta: URL =
    testMediaDirectory
        .appendingPathComponent("mp4_nometa")
        .appendingPathExtension("m4a")

public let sampleCover: URL =
    testMediaDirectory
        .appendingPathComponent("samplecover-green")
        .appendingPathExtension("jpg")

let testMediaDirectory = URL(fileURLWithPath: #file)
    .deletingLastPathComponent()
    .appendingPathComponent("TestMedia")


public let tempOutputDirectory: URL = {
    let tempDirectory = FileManager.default.temporaryDirectory
        .appendingPathComponent("SwiftTaggerTemp", isDirectory: true)
    do {
        try FileManager.default.createDirectory(
            at: tempDirectory,
            withIntermediateDirectories: true)
        return tempDirectory.appendingPathComponent("test.m4a")
    } catch {
        fatalError("Unable to create temporary directory")
    }
}()

func emptyDirectory() throws {
    try FileManager.default.removeItem(at: tempOutputDirectory)
}

/// Creates the test file on the desktop in the directory `TestOutput`
public func localOutputDirectory(_ fileName: String) throws -> URL {
    let home = FileManager.default.homeDirectoryForCurrentUser
    let desktopPath = "Desktop/TestOutput"
    let directory = home.appendingPathComponent(
        desktopPath, isDirectory: true)
    return directory.appendingPathComponent(fileName).appendingPathExtension("m4a")
}

public let localDirectory: URL = {
    return FileManager.default
        .homeDirectoryForCurrentUser
        .appendingPathComponent("Downloads/audiobook")
}()
