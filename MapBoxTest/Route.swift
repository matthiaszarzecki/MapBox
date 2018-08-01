//
//  Route.swift
//  MapBoxTest
//
//  Created by Zarzecki, Matthias on 01.08.18.
//  Copyright © 2018 Matthias Zarzecki. All rights reserved.
//

import Foundation

typealias directionsResponse = [Directions]

struct Directions: Codable {
    let routes: [Route]
    let waypoints: [Waypoint]
    let code: String
    let uuid: String
}

struct Route: Codable {
    let geometry: String
    let legs: [Leg]
    let weightName: String
    let weight: Float
    let duration: Float
    let distance: Float
    
    private enum CodingKeys: String, CodingKey {
        case geometry = "geometry"
        case legs = "legs"
        case weightName = "weight_name"
        case weight = "weight"
        case duration = "duration"
        case distance = "distance"
    }
}

struct Leg: Codable {
    let summary: String
    let weight: Float
    let duration: Float
    let steps: [Int]
    let distance: Float
}

struct Waypoint: Codable {
    let name: String
    let location: [Float]
}
