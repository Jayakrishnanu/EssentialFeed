//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Jayakrishnan u on 11/19/24.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
