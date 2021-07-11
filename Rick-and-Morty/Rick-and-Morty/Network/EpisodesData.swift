//
//  EpisodesData.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 06.06.2021.
//

import UIKit

struct EpisodesData: Codable {
    let info: Info
    let results: [Result]
}

struct Info: Codable {
    let count: Int
}

struct Result: Codable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case airDate = "air_date"
        case episode
        case characters
    }
}
