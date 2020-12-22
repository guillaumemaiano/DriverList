//
//  DriverInformation.swift
//  DriverList
//
//  Created by guillaume MAIANO on 21/12/2020.
//

import Foundation

// struct is more idiomatic to Swift models
struct DriverInformation: Codable {
    let rank: Int // obvious, right?
    let user: String? // the name: le pseudo
    let score: Double // the score, defined as a "number" in the OpenAPI spec. We choose the widest transaltion unit.
    let distance: Float // the distance travelled, defined as a "number" in the OpenAPI spec. We choose the smaller translation unit, because we're not measuring interstellar travels, nor using nanometric precision.
    let userId: String
    
    // note: the server can return null values, for example for pseudo.
    enum CodingKeys: String, CodingKey {
        case rank = "rank"
        case score = "score"
        case user = "pseudo"
        case distance = "distance"
        case userId = "userId"
        // ignore previousRank, we're not displaying it atm
    }
}
