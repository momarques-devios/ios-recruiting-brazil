//
//  Movie.swift
//  TesteConcrete
//
//  Created by Mônica Marques on 04/03/20.
//  Copyright © 2020 Mônica Marques. All rights reserved.
//

import Foundation

struct Movie: Codable {
    var adult: Bool
    var genres: [Genre]
    var homepage: String?
    var title: String
    var originalTitle: String
    var releaseDate: String
    var overview: String
    
    enum CodingKeys: String, CodingKey {
        case adult
        case genres
        case homepage
        case title
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case overview
    }
    
}

struct Genre: Codable {
    var id: Int
    var name: String
}
