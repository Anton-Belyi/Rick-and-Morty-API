//
//  CharactersData.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 18.04.2021.
//

import UIKit

// Структура для парсинга Персонажей
struct CharactersData: Codable {
    let info: Info
    let results: [Result]
}

struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String
}

struct Result: Codable {
    let id: Int
    let name: String
    let type: String
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
