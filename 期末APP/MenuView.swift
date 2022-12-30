//
//  MenuView.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/17.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var location: LocationClass
    @Binding var showMenu: Bool
    
    var body: some View {
            ScrollView(.vertical) {
                VStack (alignment: .leading){
                    Group {
                        Button("基隆市") {
                            location.name = "基隆市"
                            location.lat = 25.137951
                            location.lng = 121.758880
                            location.radius = 8
                            location.range = 8
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        Button("台北市") {
                            location.name = "台北市"
                            location.lat = 25.066190
                            location.lng = 121.559013
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("新北市") {
                            location.name = "新北市"
                            location.lat = 25.035610
                            location.lng = 121.435153
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("宜蘭縣") {
                            location.name = "宜蘭線"
                            location.lat = 24.719862
                            location.lng = 121.762917
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("桃園市") {
                            location.name = "桃園市"
                            location.lat = 24.973588
                            location.lng = 121.270680
                            location.radius = 25
                            location.range = 25
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("新竹市") {
                            location.name = "新竹市"
                            location.lat = 24.795240
                            location.lng = 120.982740
                            location.radius = 8
                            location.range = 8
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("新竹縣") {
                            location.name = "新竹縣"
                            location.lat = 24.848890
                            location.lng = 121.007103
                            location.radius = 8
                            location.range = 8
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("苗栗縣") {
                            location.name = "苗栗縣"
                            location.lat = 24.533641
                            location.lng = 120.821580
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                    }
                    Group {
                        Button("台中市") {
                            location.name = "台中市"
                            location.lat = 24.202126
                            location.lng = 120.639233
                            location.radius = 32
                            location.range = 32
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("彰化縣") {
                            location.name = "彰化縣"
                            location.lat = 24.034191
                            location.lng = 120.518411
                            location.radius = 12
                            location.range = 12
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("南投縣") {
                            location.name = "南投縣"
                            location.lat = 23.966599
                            location.lng = 120.967287
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("花蓮縣") {
                            location.name = "花蓮縣"
                            location.lat = 23.976490
                            location.lng = 121.589287
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("雲林縣") {
                            location.name = "雲林縣"
                            location.lat = 23.701641
                            location.lng = 120.481682
                            location.radius = 32
                            location.range = 32
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("嘉義市") {
                            location.name = "嘉義市"
                            location.lat = 23.477265
                            location.lng = 120.444500
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("嘉義縣") {
                            location.name = "嘉義縣"
                            location.lat = 23.455188
                            location.lng = 120.269981
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("台南市") {
                            location.name = "台南市"
                            location.lat = 23.029497
                            location.lng = 120.260108
                            location.radius = 32
                            location.range = 32
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                    }
                    Group {
                        Button("高雄市") {
                            location.name = "高雄市"
                            location.lat = 22.688972
                            location.lng = 120.324762
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("台東市") {
                            location.name = "台東市"
                            location.lat = 22.765666
                            location.lng = 121.112878
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("屏東市") {
                            location.name = "屏東市"
                            location.lat = 22.671105
                            location.lng = 120.493899
                            location.radius = 8
                            location.range = 8
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                        Button("屏東縣") {
                            location.name = "屏東縣"
                            location.lat = 22.545579
                            location.lng = 120.543603
                            location.radius = 16
                            location.range = 16
                            showMenu = false
                        }
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding(.top, 30)
                    }
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            }
        }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(showMenu: .constant(true))
            .environmentObject(LocationClass())
    }
}
