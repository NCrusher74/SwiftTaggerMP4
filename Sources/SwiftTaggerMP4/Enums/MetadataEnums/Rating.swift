/* ContentRatings.swift
  SwiftTaggerMP4

  Created by Nolaine Crusher on 5/2/20.
  Copyright © 2020 Nolaine Crusher. All rights reserved.
*/


import Foundation

/// Ratings used by iTunes store
public enum Rating: Int, CaseIterable {
    case none = 0
    case clean = 2
    case explicit = 4

    public var stringValue: String {
        switch self {
            case .none: return "None"
            case .explicit: return "Explicit"
            case .clean: return "Clean"
        }
    }
    
    static let stringMapping: [String: Rating] = {
        var mapping: [String: Rating] = [:]
        for rating in Rating.allCases {
            let name = rating.stringValue
            mapping[name] = rating
        }
        return mapping
    }()
    
    public init?(stringValue: String) {
        self = Rating.stringMapping[stringValue] ?? .none
    }
}
