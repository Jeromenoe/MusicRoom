//
//  AcceptFriendRequest.swift
//  musicroomfortytwo
//
//  Created by ML on 05/02/2021.
//

import Foundation

class AcceptEventRequest {
    
    static let shared = AcceptEventRequest()
    private init() {}
    private var task: URLSessionTask?
    
    func acceptEventRequest(eventId: String, friendId: String, callback: @escaping (Int) -> Void) {
        let route = UserDefaults.standard.string(forKey: "route")!
        let userId = UserDefaults.standard.string(forKey: "userId")!
        let url = URL(string: route + "/users/" + userId + "/events/" + eventId + "/acceptInvitation/friends/" + friendId)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let token = UserDefaults.standard.string(forKey: "userToken") ?? ""
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        request.addValue(UIDevice.modelName, forHTTPHeaderField: "deviceModel")
        request.addValue(UIDevice.current.systemVersion, forHTTPHeaderField: "deviceOSVersion")
        request.addValue(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String, forHTTPHeaderField: "musicRoomVersion")
        let session = URLSession(configuration: .default)
        task?.cancel()
        task = session.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                guard let data = data, error == nil else {
                    callback(0)
                    return
                }
                if let _ = try? JSONDecoder().decode([String: String].self, from: data) {
                    if let response = response as? HTTPURLResponse {
                        if response.statusCode == 200 {
                            callback(1)
                            return
                        }
                    }
                 }
                callback(0)
                return
             }
         }
         task?.resume()
    }
}
