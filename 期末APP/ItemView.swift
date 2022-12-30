//
//  ItemView.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/24.
//

import SwiftUI

struct ItemView: View {
    
    @EnvironmentObject var nearbysearch: NearbySearchClass
    @EnvironmentObject var location: LocationClass
    let suggestions = [
            "Supermarket", "Drink", "School",
        ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(nearbysearch.items, id: \.place_id) { item in
                    NavigationLink {
                        DetailView(placeid: item.place_id)
                    } label: {
                        ItemRow(item: item)
                    }
                }
            }
            .searchable(text: $nearbysearch.searchText, prompt: "搜尋預設是Restaurant") {
                ForEach (suggestions, id: \.self) { suggestion in
                    Text(suggestion)
                        .searchCompletion(suggestion)
                }
            }
            .onChange(of: nearbysearch.searchText) { newValue in
                if nearbysearch.searchText.isEmpty {
                    nearbysearch.fetchItems(keyword: "Restaurant", lat: location.lat, lng: location.lng, radius: location.radius)
                } else {
                    nearbysearch.fetchItems(keyword: nearbysearch.searchText, lat: location.lat, lng: location.lng, radius: location.radius)
                }
            }
            .onAppear() {
                nearbysearch.fetchItems(keyword: "Restaurant", lat: location.lat, lng: location.lng, radius: location.radius)
            }
            .refreshable {
                nearbysearch.fetchItems(keyword: nearbysearch.searchText, lat: location.lat, lng: location.lng, radius: location.radius)
            }
            .navigationTitle(location.name)
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
            .environmentObject(NearbySearchClass())
            .environmentObject(LocationClass())
    }
}
