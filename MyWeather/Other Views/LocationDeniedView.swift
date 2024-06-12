//
//  LocationDeniedView.swift
//  MyWeather
//
//  Created by Lim En Hui on 13/6/24.
//

import SwiftUI

struct LocationDeniedView: View {
    var body: some View {
        ContentUnavailableView(label: {
            Label("Location Services", systemImage: "gear")
        }, description: {
            Text("""
            1. Tap on the button to go to "Privacy and Security"
            2. Tap on "Location Services"
            3. Locate the "MyWeather" app and tap on it
            4. Change the setting to "While using the App"
            """).multilineTextAlignment(.leading)
        }) {
            Button(action: {
                UIApplication.shared.open(
                    URL(string: UIApplication.openSettingsURLString)!,
                    options: [:],
                    completionHandler: nil
                )
            }) {
                Text("Open Settings")
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    LocationDeniedView()
}
