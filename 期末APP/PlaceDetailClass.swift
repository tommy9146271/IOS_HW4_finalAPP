//
//  PlaceDetailClass.swift
//  期末APP
//
//  Created by 李子暘 on 2022/12/27.
//

import Foundation

class PlaceDetailClass: ObservableObject {
    
    @Published var test = "123"
    @Published var place = PlaceItem()
    @Published var showError = false

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
    func fetchPlaceDetail(place_id: String) {
        let urlString = "https://maps.googleapis.com/maps/api/place/details/json?place_id=\(place_id)&language=zh-TW&key=AIzaSyBkeWiC8dwt0R91MSP9fldfSnr8wiE416A"

        guard let urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: urlString) else {
                  error = FetchError.invalidURL
                  return
        }

        URLSession.shared.dataTask(with: url) { data, response, error  in
            if let data = data {
                do {
                    let placedeatilResponse = try JSONDecoder().decode(PlaceDetailResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.place = placedeatilResponse.result
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
