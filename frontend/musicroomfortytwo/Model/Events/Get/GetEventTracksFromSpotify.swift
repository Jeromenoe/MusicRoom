//
//  GetEventTracksFromSpotify.swift
//  musicroomfortytwo
//
//  Created by ML on 08/02/2021.
//

import Foundation

/*
 We dont need this class, because we use another file  : 
 */

class GetEventTracksFromSpotify {
    
    //DELETE ALL ??????
    static let shared = GetEventTracksFromSpotify()
    private init() {}
    private var task: URLSessionTask?
    
//    
//    func searchTracks(textfield: String, callback: @escaping (Bool) -> Void) {
//        let userSearch = textfield
//        let parameters = ["q":userSearch, "type":"track", "market": "FR", "limit":"20"]
//        var components = URLComponents(string: "https://api.spotify.com/v1/search")!
//        components.queryItems = parameters.map { (key, value) in
//            URLQueryItem(name: key, value: value)
//        }
//        var request = URLRequest(url: components.url!)
//        let token = UserDefaults.standard.string(forKey: "spotifyToken")!
//        let bearer = "Bearer " + token
//        request.setValue(bearer, forHTTPHeaderField: "Authorization")
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data, let response = response as? HTTPURLResponse, (200 ..< 300) ~= response.statusCode, error == nil else {
//                callback(false)
//                return
//            }
//            do {
//                _ = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) //json
//                let decoder = JSONDecoder()
//                self.foundedTracks.removeAll()
//                let itemSearchResult = try decoder.decode(SpotifyTrackResult.self, from: data)
//                let count = itemSearchResult.tracks.items.count
//                if count > 0 {
//                    self.createSearchResult(itemSearchResult: itemSearchResult)
//                }
//            } catch let parsingError {
//                print("Error", parsingError)
//            }
//            callback(true)
//            return
//        }
//        task.resume()
//    }
}
