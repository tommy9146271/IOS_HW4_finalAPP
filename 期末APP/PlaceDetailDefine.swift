//
//  PlaceDetailDefine.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/27.
//

import Foundation

struct PlaceDetailResponse: Codable {
    let result: PlaceItem
}

struct PlaceItem: Codable {
    let formatted_address: String
    let name: String
    let opening_hours: PlaceDetailOpen
    let photos: [Photo]
    let place_id: String
    let url: String
    let website: String
    init() {
        formatted_address = ""
        name = ""
        opening_hours = PlaceDetailOpen()
        photos = [Photo()]
        place_id = ""
        url = ""
        website = ""
    }
}
struct PlaceDetailOpen: Codable {
    let weekday_text: [String]
    init() {
        weekday_text = []
    }
}

struct Photo: Codable {
    let photo_reference: String
    init() {
        photo_reference = ""
    }
}
