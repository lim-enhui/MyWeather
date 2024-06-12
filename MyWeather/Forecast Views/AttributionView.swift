//
//  AttributionView.swift
//  MyWeather
//
//  Created by Lim En Hui on 3/6/24.
//

import SwiftUI
import WeatherKit

struct AttributionView: View {
    @Environment(\.colorScheme) private var colorScheme
    let weatherManager = WeatherManager.shared
    @State private var attribution: WeatherAttribution?
    
    var body: some View {
        VStack {
            if let attribution {
                AsyncImage(url: colorScheme == .dark ? attribution.combinedMarkDarkURL : attribution.combinedMarkLightURL) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                } placeholder: {
                    ProgressView()
                }
                Text(.init("[\(attribution.serviceName)](\(attribution.legalPageURL))"))
            }
        }
        .task {
            Task.detached{ @MainActor in
                attribution = await weatherManager.weatherAttribution()
            }
        }
    }
}

#Preview {
    AttributionView()
}