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
    public var purchaseDate: Date? {
        get {
            do {
                return try parser.get(.purchaseDate)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.purchaseDate.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.purchaseDate, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.purchaseDate.rawValue)")
                }
            } else {
                do {
                    try parser.set(.purchaseDate, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.purchaseDate.rawValue)")
                }
            }
        }
    }
    
    public var recordingDate: Date? {
        get {
            do {
                return try parser.get(.recordingDate)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.recordingDate.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.recordingDate, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.recordingDate.rawValue)")
                }
            } else {
                do {
                    try parser.set(.recordingDate, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.recordingDate.rawValue)")
                }
            }
        }
    }
    
    public var releaseDate: Date? {
        get {
            do {
                return try parser.get(.releaseDate)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.releaseDate.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.releaseDate, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.releaseDate.rawValue)")
                }
            } else {
                do {
                    try parser.set(.releaseDate, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.releaseDate.rawValue)")
                }
            }
        }
    }
    
    public var year: Date? {
        get {
            do {
                return try parser.get(.recordingYear)
            } catch {
                print("WARNING: Unable to retrieve metadata atom \(AtomIdentifier.recordingYear.rawValue)")
                return nil
            }
        }
        set {
            if let new = newValue {
                do {
                    try parser.set(.recordingYear, dateValue: new)
                } catch {
                    print("WARNING: Unable to set metadata atom \(AtomIdentifier.recordingYear.rawValue)")
                }
            } else {
                do {
                    try parser.set(.recordingYear, dateValue: nil)
                } catch {
                    print("WARNING: Unable to remove metadata atom \(AtomIdentifier.recordingYear.rawValue)")
                }
            }
        }
    }
}
