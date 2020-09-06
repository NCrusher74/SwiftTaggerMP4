/*
 
 TestMedia.swift
 SwiftTaggerMP4
 
 Copyright ©2020 Nolaine Crusher. All rights reserved.
 
 */

import Foundation
import SwiftTaggerMP4

let sampleBookCV1Url: URL =
    testMediaDirectory
        .appendingPathComponent("SampleBook")
        .appendingPathExtension("m4b")

let sampleBookSublerUrl: URL =
    testMediaDirectory
        .appendingPathComponent("mp4_chaptered")
        .appendingPathExtension("m4a")

let sampleBookCV2Url: URL =
    testMediaDirectory
        .appendingPathComponent("PoePoems_librivox")
        .appendingPathExtension("m4b")

let testMediaDirectory = URL(fileURLWithPath: #file)
    .deletingLastPathComponent()
    .appendingPathComponent("TestMedia")

@available(OSX 10.13, *)
func tempDirectory() throws -> URL {
    let tempDirectory = FileManager.default.temporaryDirectory
        .appendingPathComponent("SwiftTaggerTemp",
                                isDirectory: true)
    try FileManager.default.createDirectory(
        at: tempDirectory,
        withIntermediateDirectories: true)
    return tempDirectory
}

@available(OSX 10.13, *)
func emptyDirectory() throws {
    try FileManager.default.removeItem(at: tempDirectory())
}

@available(OSX 10.13, *)
func localDirectory(fileName: String, fileExtension: String) throws -> URL {
    let home = FileManager.default.homeDirectoryForCurrentUser
    let desktopPath = "Desktop/TestOutput"
    try FileManager.default.createDirectory(
        at: home.appendingPathComponent(desktopPath, isDirectory: true),
        withIntermediateDirectories: true)
    return home.appendingPathComponent(desktopPath, isDirectory: true).appendingPathComponent(fileName).appendingPathExtension(fileExtension)
}
