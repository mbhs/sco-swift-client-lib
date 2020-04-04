//
// ProfileListResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ProfileListResponse: Codable {

    public var count: Int
    public var next: String?
    public var previous: String?
    public var results: [Profile]

    public init(count: Int, next: String?, previous: String?, results: [Profile]) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }

}
