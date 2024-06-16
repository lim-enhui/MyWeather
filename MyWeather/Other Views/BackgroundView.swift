//
//  BackgroundView.swift
//  MyWeather
//
//  Created by Lim En Hui on 14/6/24.
//

import SwiftUI
import WeatherKit

struct BackgroundView: View {

    let condition: WeatherCondition
    
    var body: some View {
        Image(condition.rawValue)
            .blur(radius: 5)
            .colorMultiply(.white.opacity(0.8))
    }
}

#Preview {
    BackgroundView(condition: .cloudy)
}
