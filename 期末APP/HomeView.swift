//
//  HomeView.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/18.
//
import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var nearbysearch: NearbySearchClass
    @EnvironmentObject var location: LocationClass
    @State var showMenu = false
    
    var body: some View {
        let drag = DragGesture()
            .onEnded{
                if $0.translation.width < -100 {
                    withAnimation{
                        self.showMenu = false
                    }
                }
            }
        NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    if self.showMenu {
                        MenuView(showMenu: $showMenu)
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    } else {
                        ItemView()
                            .frame(width: geometry.size.width)
                    }
                }
                .gesture(drag)
            }
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation{
                        self.showMenu.toggle()
                    }
                }) {
                    HStack {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.black)
                        Text("縣市")
                            .foregroundColor(.black)
                    }
                }
            ), trailing: (
                HStack(spacing: 0) {
                    Text("搜尋範圍:")
                    Picker(selection: $location.radius) {
                        ForEach(0..<(location.range + 1), id: \.self) { number in
                            Text("\(number) km")
                        }
                    } label: {
                        Text("Radius")
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 100)
                    .onChange(of: location.radius) { newValue in
                        if nearbysearch.searchText.isEmpty {
                            nearbysearch.fetchItems(keyword: "Restaurant", lat: location.lat, lng: location.lng, radius: location.radius)
                        } else {
                            nearbysearch.fetchItems(keyword: nearbysearch.searchText, lat: location.lat, lng: location.lng, radius: location.radius)
                        }
                    }
                    .onAppear() {
                        location.range = location.radius
                    }
                }
            ))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(NearbySearchClass())
            .environmentObject(LocationClass())
    }
}
