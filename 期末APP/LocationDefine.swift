//
//  LocationDefine.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/24.
//

import Foundation

class LocationClass: ObservableObject {
    
    @Published var name = "基隆市"
    @Published var lat = 25.137951
    @Published var lng = 121.758880
    @Published var radius = 8
    @Published var range = 8
}
