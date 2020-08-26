//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 8/20/20.
//

import Foundation
import SwiftMp4MetadataParser

@available(OSX 10.13, *)
extension Tag {
    public var arrangerKeywords: [String]? {
        get {
            do {
                if try parser.get(.arrangerKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.arrangerKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.arrangerKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.arrangerKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.arrangerKeywords.rawValue)")
                }
            }
        }
    }
    
    public var artistKeywords: [String]? {
        get {
            do {
                if try parser.get(.artistKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.artistKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.artistKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.artistKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.artistKeywords.rawValue)")
                }
            }
        }
    }
    
    public var composerKeywords: [String]? {
        get {
            do {
                if try parser.get(.composerKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.composerKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.composerKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.composerKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.composerKeywords.rawValue)")
                }
            }
        }
    }
    
    public var podcastKeywords: [String]? {
        get {
            do {
                if try parser.get(.keywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.keywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.keywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.keywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.keywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.keywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.keywords.rawValue)")
                }
            }
        }
    }
    
    public var producerKeywords: [String]? {
        get {
            do {
                if try parser.get(.producerKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.producerKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.producerKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.producerKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.producerKeywords.rawValue)")
                }
            }
        }
    }
    
    public var songwriterKeywords: [String]? {
        get {
            do {
                if try parser.get(.songwriterKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.songwriterKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.songwriterKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.songwriterKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.songwriterKeywords.rawValue)")
                }
            }
        }
    }
    
    public var subtitleKeywords: [String]? {
        get {
            do {
                if try parser.get(.subtitleKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.subtitleKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.subtitleKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.subtitleKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.subtitleKeywords.rawValue)")
                }
            }
        }
    }
    
    public var titleKeywords: [String]? {
        get {
            do {
                if try parser.get(.titleKeywords).isEmpty {
                    return nil
                } else {
                    return try parser.get(.titleKeywords)
                }
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue, !new.isEmpty {
                do {
                    try parser.set(.titleKeywords, arrayValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                }
            } else {
                do {
                    try parser.set(.titleKeywords, arrayValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.titleKeywords.rawValue)")
                }
            }
        }
    }
}
