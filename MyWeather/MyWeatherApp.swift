//
//  MyWeatherApp.swift
//  MyWeather
//
//  Created by Lim En Hui on 2/6/24.
//

import SwiftUI

@main
struct MyWeatherApp: App {
    @State private var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            if locationManager.isAuthorized {
                ForecastView()
            } else {
                LocationDeniedView()
            }

        }
        .environment(locationManager)
    }
}
