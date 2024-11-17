//
//  SharedTestHelper.swift
//  EssentialFeed
//
//  Created by Jayakrishnan u on 11/17/24.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
