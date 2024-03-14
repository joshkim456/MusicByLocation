//
//  ArtistResponse.swift
//  MusicByLocation
//
//  Created by Kim, Joshua (WING) on 14/03/2024.
//

import Foundation

struct ArtistResponse: Codable {
    var count: Int
    var results: [Artist]
    
    private enum CodingKeys: String, CodingKey {
        case count
        case results
    }
}
