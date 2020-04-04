//
//  File.swift
//  
//
//  Created by Matthew on 4/4/20.
//

import Foundation

public class Story: Content {
    public var secondDeck: String?
    public var text: String
//    public var cover: Image
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case secondDeck = "second_deck"
        case text
//        case cover
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.secondDeck = try container.decode(String?.self, forKey: .secondDeck)
        self.text = try container.decode(String.self, forKey: .text)
//        self.cover = try container.decode(Image.self, forKey: .cover)
        try super.init(from: decoder)
    }
}
