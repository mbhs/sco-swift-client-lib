//
// Section.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Section: Codable {

    public var id: Int
    public var parent: Int?
    public var title: String
    public var subsections: [Section]

    public init(id: Int, parent: Int? = nil, title: String, subsections: [Section] = []) {
        self.id = id
        self.parent = parent
        self.title = title
        self.subsections = subsections
    }

}
