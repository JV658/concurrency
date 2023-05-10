//
//  PokeAPI_Helper.swift
//  concurrency
//
//  Created by Cambrian on 2023-05-10.
//

import Foundation

class PokeAPI_Helper {
    private static let pokeURL = URL(string: "https://pokeapi.co/api/v2/pokemon")!
    
    public static func fetchPokemon() async -> Any {
        let (data, _) = try! await URLSession.shared.data(from: pokeURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
