//
//  ContentView.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/17.
//
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("首頁", systemImage: "house.fill")
                }
            MapView()
                .tabItem{
                    Label("地圖", systemImage: "location.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NearbySearchClass())
            .environmentObject(LocationClass())
    }
}
