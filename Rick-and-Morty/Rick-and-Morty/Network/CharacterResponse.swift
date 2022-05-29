//
//  CharacterResponse.swift
//  Rick-and-Morty
//
//  Created by Антон Белый on 29.05.2022.
//

import Foundation

class CharacterResponse {
    static func getEpisodesJSON(completionHandler: @escaping (CharactersData) -> Void) {
        let urlString = "https://rickandmortyapi.com/api/character"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            do {
                guard let data = data else { return }
                let response = try JSONDecoder().decode(CharactersData.self, from: data)
                completionHandler(response)
            } catch {
                print("ERROR IS HERE: \(error)")
            }
        }.resume()
    }
}
