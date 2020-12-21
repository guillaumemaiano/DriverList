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
        let url = URL(string: "https://service.drivequant.com/v2")! // should be better encapsulated
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqZXJlbXkuYmF5bGVAZHJpdmVxdWFudC5jb20iLCJoeXBlckFkbWluIjpmYWxzZSwiYXVkaWVuY2UiOiJtb2JpbGUiLCJjcmVhdGVkIjoxNjA0Mzk3MjQ5OTc4LCJleHAiOjE2MTIxNzMyNDksImN1c3RvbWVyIjoiVzRuRHZOc3Q5cjdDZDF4bUlCMWVpWmlFIn0.dqQgljBQQJ3S4KzHqa51_ICbe2f7Z_gfuOOQt9piPX9_vos6nEhMryXB6puvRgAcEChAyMjYh6OrP-ZARpMkoQ", forHTTPHeaderField: "Authorization")
        NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main, completionHandler: {_,_,_ in print("NOT IMPLEMENTED")})
        // convert to datatask with request lol...
        
    }
}
