//
//  DetailView.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/27.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var nearbysearch: NearbySearchClass
    @EnvironmentObject var placedetail: PlaceDetailClass
    var placeid: String
    var timer = Timer()
    var now: Float = 0.05
    
    var body: some View {
        ScrollView(.vertical) {
            HStack {
                ShareLink(item: placedetail.place.website) {
                    Label("分享", systemImage: "square.and.arrow.up")
                }
                ShareLink(item: placedetail.place.url) {
                    Label("分享MAP", systemImage: "square.and.arrow.up")
                }
            }
            ProgressView(value: 1)
            TabView{
                AsyncImage(url: URL(string: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=500&photoreference=\(placedetail.place.photos[0].photo_reference)&key=AIzaSyBkeWiC8dwt0R91MSP9fldfSnr8wiE416A")) { image in
                    image
                        .resizable()
                } placeholder: {
                    Color.gray
                }
                    .scaledToFit()
                    .frame(width: 500, height: 400)
                AsyncImage(url: URL(string: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=500&photoreference=\(placedetail.place.photos[0].photo_reference)&key=AIzaSyBkeWiC8dwt0R91MSP9fldfSnr8wiE416A")) { image in
                    image
                        .resizable()
                } placeholder: {
                    Color.gray
                }
                    .scaledToFit()
                    .frame(width: 500, height: 400)
            }
            .frame(height: 300)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
            VStack {
                Text(placedetail.place.name)
                    .bold()
                    .font(.largeTitle)
                HStack {
                    Image(systemName: "location")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.blue)
                    Text(placedetail.place.formatted_address)
                        .font(.title2)
                }
                HStack {
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundColor(.blue)
//                    Text(placedetail.place.opening_hours.weekday_text[<#Int#>])
                }
            }
        }
        .onAppear() {
            placedetail.fetchPlaceDetail(place_id: placeid)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(placeid: "ChIJM7oEpP5PXTQRUDKU0IcqmJs")
            .environmentObject(NearbySearchClass())
            .environmentObject(PlaceDetailClass())
    }
}

//https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=25.144655,121.768818&radius=1000&keyword=restaurant&language=zh-TW&key=AIzaSyBkeWiC8dwt0R91MSP9fldfSnr8wiE416A
//https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJM7oEpP5PXTQRUDKU0IcqmJs&language=zh-TW&key=AIzaSyBkeWiC8dwt0R91MSP9fldfSnr8wiE416A
//https://maps.googleapis.com/maps/api/place/photo?maxwidth=500&photoreference=ARywPALqcYUyDisbGY5hn7dZIu4aWvohVg9xnS0DhQ_U_aRGnBkrZyMlMu-S4wpr3bELOtKQ0sVx5oUA5X-jO2zcnicn3mFmGmAYFgK1MubS41jMO020qb8OcePDz-Jtq2XdI7XA5DtICWms3o_pYcjnYa4y8mH-2zId__IiAVp3GPVB-OAO&key=AIzaSyBkeWiC8dwt0R91MSP9fldfSnr8wiE416A
