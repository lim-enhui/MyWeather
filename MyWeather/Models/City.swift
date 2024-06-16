//
//  City.swift
//  MyWeather
//
//  Created by Lim En Hui on 13/6/24.
//

import Foundation
import CoreLocation

struct City: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var clLocation: CLLocation {
        CLLocation(latitude: latitude, longitude: longitude)
    }
    
    static var cities: [City] {
        [
            .init(name: "Paris, France", latitude: 48.856788, longitude: 2.351088),
            .init(name: "Sydney, Australia", latitude: -33.872710, longitude: 151.205694),
            .init(name: "Singapore, Singapore", latitude: 1.364917, longitude: 103.822872)
        ]
    }
    
    static var mockCurrent: City {
        .init(name: "Singapore, Singapore", latitude: 1.364917, longitude: 103.822872)
    }
}
