//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Jayakrishnan u on 11/16/24.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
   
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ items: [LocalFeedItem], timestamp: Date, completion: @escaping InsertionCompletion)
}

public struct LocalFeedItem: Equatable {
    public let id: UUID
    public let description: String?
    public let imageURL: URL
    public let location: String?
    
    public init(id: UUID, description: String?, imageURL: URL, location: String?) {
        self.id = id
        self.description = description
        self.imageURL = imageURL
        self.location = location
    }
}
