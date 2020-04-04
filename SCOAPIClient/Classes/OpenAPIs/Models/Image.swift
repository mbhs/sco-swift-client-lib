//
//  File.swift
//  
//
//  Created by Matthew on 4/4/20.
//

import Foundation

public class Image: Content {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
}
