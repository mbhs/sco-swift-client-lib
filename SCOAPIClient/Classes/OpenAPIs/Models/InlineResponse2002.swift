//
// InlineResponse2002.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct InlineResponse2002: Codable {

    public var count: Int
    public var next: String?
    public var previous: String?
    public var results: [Section]

    public init(count: Int, next: String?, previous: String?, results: [Section]) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }

}
