//
//  NearbySearchClass.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/22.
//
import Foundation

class NearbySearchClass: ObservableObject {
    
    @Published var items = [NearbySearch]()
    @Published var showError = false
    @Published var searchText = ""

    var error: Error? {
        willSet {
            DispatchQueue.main.async {
                self.showError = newValue != nil
            }
        }
    }
    enum FetchError: Error {
        case invalidURL
    }
    func fetchItems(keyword: String, lat: Double, lng: Double, radius: Int) {
        let radiustemp = radius * 1000
        let urlString = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=\(lat),\(lng)&radius=\(radiustemp)&keyword=\(keyword)&language=zh-TW&key=AIzaSyBkeWiC8dwt0R91MSP9fldfSnr8wiE416A"
        
        guard let urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: urlString) else {
                  error = FetchError.invalidURL
                  return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error  in
            if let data = data {
                do {
                    let nearbysearchResponse = try JSONDecoder().decode(NearbySearchResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.items = nearbysearchResponse.results
                        self.error = nil
                    }
                } catch  {
                    self.error = error
                }
            } else if let error = error {
                self.error = error
            }
        }.resume()
        
    }
}
