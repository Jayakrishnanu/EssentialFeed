//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Jayakrishnan u on 11/16/24.
//

import Foundation

internal struct RemoteFeedItem: Codable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
