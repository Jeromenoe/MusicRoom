//
//  GetEventTracks.swift
//  musicroomfortytwo
//
//  Created by ML on 07/02/2021.
//

import Foundation

//struct EventObjectResponse: Decodable {
//    var code: String
//    var event: EventObject
//}

extension Event {
//    func refreshEvent(callback: @escaping (Int) -> Void) {
//        var task: URLSessionTask?
//        let route = UserDefaults.standard.string(forKey: "route")!
//        let url = URL(string: route + "/events/" + self.id!)!
//        print(url);
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        let token = UserDefaults.standard.string(forKey: "userToken") ?? ""
//        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
//        let session = URLSession(configuration: .default)
//        task?.cancel()
//        task = session.dataTask(with: request) { (data, response, error) in
//            DispatchQueue.main.async {
//                guard let data = data, error == nil else {
//                    return
//                }
//                do {
//                    let responseJSON = try JSONDecoder().decode(EventObjectResponse.self, from: data)
//                    if let response = response as? HTTPURLResponse {
//                        if response.statusCode == 200 {
//                            self.updateEventInfos(event: responseJSON.event)
//                        }
//                    }
//                    callback(1)
//                    return
//                } catch let parsingError {
//                    print("Error", parsingError)
//                }
//             }
//         }
//         task?.resume()
//    }
}
