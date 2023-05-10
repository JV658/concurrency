//
//  PokeAPI_Helper.swift
//  concurrency
//
//  Created by Cambrian on 2023-05-10.
//

import Foundation

class PokeAPI_Helper {
    private static let urlString = "https://pokeapi.co/api/v2/pokemon-species"
    
    private static func createURL(pokemon: String) -> URL?{
        var tempURLString = urlString
        if pokemon != "" {
            tempURLString.append("/")
            tempURLString.append(pokemon)
        }
        guard
            let url = URL(string: tempURLString)
        else { return nil }
        
        return url
        
    }
    
    public static func fetch(pokemon: String) async -> Any {
        let pokeURL = createURL(pokemon: pokemon)!
        let (data, _) = try! await URLSession.shared.data(from: pokeURL)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}

/*
 
 when the button is pressed
 display the API response (pokeAPI data) to the console.
 
 extra task - get information for your favorite pokemon and display it when the button is pressed
 */
