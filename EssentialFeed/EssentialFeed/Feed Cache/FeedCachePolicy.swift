//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Jayakrishnan u on 11/17/24.
//

import Foundation

internal final class FeedCachePolicy {
    private  init() { }
    private static let calendar = Calendar(identifier: .gregorian)
    
    private static var maxCacheAgeInDays: Int {
        return 7
    }
    
    static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCacheAgeInDays, to: timestamp) else {
            return false
        }
        return date < maxCacheAge
    }
}
