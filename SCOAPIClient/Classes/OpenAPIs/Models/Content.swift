//
//  Content.swift
//  
//
//  Created by Matthew on 4/4/20.
//

import Foundation

public class Content: Decodable {
    public var id: Int
    public var title: String
    public var description: String?
    public var tags: [Tag]
    public var created: Date
    public var modified: Date
    public var authors: [User]
    public var guestAuthors: String
    public var section: Section?
    public var views: Int
    public var embedOnly: Bool
    public var linked: [Int]
    public var descriptor: String
    public var shareUrl: String

//    public init(url: String? = nil, title: String, description: String? = nil, tags: [Tag], created: Date, modified: Date, user: String) {
//        self.url = url
//        self.title = title
//        self.description = description
//        self.tags = tags
//        self.created = created
//        self.modified = modified
//        self.user = user
//    }
//    public init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let id = try container.decode(String.self, forKey: .id)
//        let nestedContainer = try container.nestedContainer(keyedBy: ArtistKeys.self, forKey: .data)
//        let type = try nestedContainer.decode(ArtistType.self, forKey: .type)
//        switch type {
//            case .individual:
//                let individualData = try container.decode(IndividualArtist.self, forKey: .data)
//                self = .individual(id, individualData)
//            case .band:
//                let bandData = try container.decode(BandArtist.self, forKey: .data)
//                self = .band(id, bandData)
//        }
//    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case description
        case tags
        case created
        case modified
        case authors
        case guestAuthors = "guest_authors"
        case section
        case views
        case embedOnly = "embed_only"
        case linked
        case descriptor
        case shareUrl = "share_url"
    }
}




