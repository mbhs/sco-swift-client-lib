//
//  Content.swift
//  
//
//  Created by Matthew on 4/4/20.
//

import Foundation

public struct Content: Codable {

    public var url: String?
    /** A short biography, often including likes and dislikes, accomplishments, etc. Should be several sentences minimum. */
    public var biography: String
    public var avatar: String?
    public var position: String
    public var graduationYear: Int?
    public var user: String

    public init(url: String? = nil, biography: String, avatar: String? = nil, position: String, graduationYear: Int? = nil, user: String) {
        self.url = url
        self.biography = biography
        self.avatar = avatar
        self.position = position
        self.graduationYear = graduationYear
        self.user = user
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case biography
        case avatar
        case position
        case graduationYear = "graduation_year"
        case user
    }

}
