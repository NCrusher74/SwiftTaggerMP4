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
    // MARK: Performer and Involved Person Credits
    public var involvementCreditsList: [InvolvedPersonCredits: [String]] {
        get {
            return credits.involvementList
        }
        set {
            credits.involvementList = newValue
        }
    }
    
    public var performanceCreditsList: [MusicianAndPerformerCredits: [String]] {
        get {
            return credits.performanceList
        }
        set {
            credits.performanceList = newValue
        }
    }
    
    public mutating func removeInvolvedPersonCredit(_ role: InvolvedPersonCredits) {
        self.involvementCreditsList[role] = nil
    }
    
    public mutating func removePerformerCredit(_ role: MusicianAndPerformerCredits) {
        self.performanceCreditsList[role] = nil
    }
}
