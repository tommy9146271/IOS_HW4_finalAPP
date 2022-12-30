//
//  NearbySearchDefine.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/22.
//
import Foundation

struct NearbySearchResponse: Codable {
    let results: [NearbySearch]
}

struct NearbySearch: Codable {
    let geometry: Geometry
    let name: String
    let opening_hours: Open?
    let place_id: String
    let price_level: Int?
    let rating: Double
    let user_ratings_tatol: Int?
    let vicinity: String
}

struct Geometry: Codable {
    let location: Location
}

struct Location: Codable {
    let lat: Double
    let lng: Double
}

struct Open: Codable {
    let open_now: Bool
}
