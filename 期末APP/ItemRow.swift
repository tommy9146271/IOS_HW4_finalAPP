//
//  ItemRow.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/19.
import SwiftUI

struct ItemRow: View {
    
    let item: NearbySearch
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.name)
                .bold()
            Text(item.vicinity)
            HStack {
                Text(String(format: "%.1f", item.rating))
//                Image(systemName: "star.fill")
//                    .foregroundColor(.yellow)
//                    .scaledToFit()
//                    .frame(width: 10)
//                Text(String(item.user_ratings_tatol ?? Int()))
            }
            if ((item.opening_hours?.open_now) == true) {
                Text("營業中")
                    .foregroundColor(Color(red: 24/255, green: 128/255, blue: 56/255))
            } else {
                Text("已打烊")
                    .foregroundColor(Color(red: 217/255, green: 48/255, blue: 37/255))
            }
        }
    }
}
