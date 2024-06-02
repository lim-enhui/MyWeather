//
//  ContentView.swift
//  MyWeather
//
//  Created by Lim En Hui on 2/6/24.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ForecastView()
}
