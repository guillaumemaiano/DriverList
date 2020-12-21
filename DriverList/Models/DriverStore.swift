//
//  DriverStore.swift
//  DriverList
//
//  Created by guillaume MAIANO on 21/12/2020.
//

import Foundation

class DriverStore {
    var drivers: [DriverInformation] = []
    
    // this should have the capacity to get the data from the API
    
    func refreshData() -> Void {
        // request a refresh via NSURLConnection
        let urlString = "https://service.drivequant.com/v2"
        var urlBuilder = URLComponents(string: urlString)
        urlBuilder?.queryItems = [
            // rankingDepth=5&rankingPeriod=ALL_TIME&rankingType=safety&groupName=All
            URLQueryItem(name: "rankingDepth", value: "5"),
            URLQueryItem(name: "rankingPeriod", value: "ALL_TIME"), //Parameters should have their own struct:String
            URLQueryItem(name: "rankingType", value: "safety"), // same remark
            URLQueryItem(name: "groupName", value: "All")
        ]
        guard let url = urlBuilder?.url else {
            print("URL could not be constructed \(String(describing: urlBuilder?.debugDescription))")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqZXJlbXkuYmF5bGVAZHJpdmVxdWFudC5jb20iLCJoeXBlckFkbWluIjpmYWxzZSwiYXVkaWVuY2UiOiJtb2JpbGUiLCJjcmVhdGVkIjoxNjA0Mzk3MjQ5OTc4LCJleHAiOjE2MTIxNzMyNDksImN1c3RvbWVyIjoiVzRuRHZOc3Q5cjdDZDF4bUlCMWVpWmlFIn0.dqQgljBQQJ3S4KzHqa51_ICbe2f7Z_gfuOOQt9piPX9_vos6nEhMryXB6puvRgAcEChAyMjYh6OrP-ZARpMkoQ", forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            // get the data and store it in the drivers array
            print(response.debugDescription)
        }.resume()
        
    }
}
