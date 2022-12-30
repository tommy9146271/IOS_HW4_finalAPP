//
//  __APPApp.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/17.
//

import SwiftUI

@main
struct __APPApp: App {
    
    @StateObject private var nearbySearch = NearbySearchClass()
    @StateObject private var location = LocationClass()
    @StateObject private var placedetail = PlaceDetailClass()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(nearbySearch)
                .environmentObject(location)
                .environmentObject(placedetail)
        }
    }
}
