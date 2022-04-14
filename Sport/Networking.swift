//
//  Networking.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import UIKit

class Networking {

    enum CommonError: Error {
        case noData
        case cantDecode
    }

    func getTennisAtp(completion: @escaping (Result<TourRankingsResponse, CommonError>) -> Void) {
        let headers = [
            "X-RapidAPI-Host": "tennis-live-data.p.rapidapi.com",
            "X-RapidAPI-Key": "b9166f7008mshae927eb202e15bap184bc7jsn5aa97fdcff1f"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://tennis-live-data.p.rapidapi.com/rankings/ATP")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            do {
                let tennis = try JSONDecoder().decode(TourRankingsResponse.self, from: data)
                completion(.success(tennis))
            } catch _ {
                completion(.failure(.cantDecode))
            }
        })
        dataTask.resume()
    }


    func getTours(completion: @escaping (Result<ToursResponse, CommonError>) -> Void) {
        let headers = [
            "X-RapidAPI-Host": "tennis-live-data.p.rapidapi.com",
            "X-RapidAPI-Key": "b9166f7008mshae927eb202e15bap184bc7jsn5aa97fdcff1f"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://tennis-live-data.p.rapidapi.com/tours")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            do {
                let tours = try JSONDecoder().decode(ToursResponse.self, from: data)
                completion(.success(tours))
            } catch _ {
                completion(.failure(.cantDecode))
            }
        })
        dataTask.resume()
    }
}
