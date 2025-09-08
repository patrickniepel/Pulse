//
//  SettingsView.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        content
            .navigationTitle(String.Localizable.settingsTitle)
            .background(Color.background)
    }

    @ViewBuilder
    private var content: some View {
        List {
            SettingsRateRowView()
            SettingsShareRowView()
            SettingsContactRowView()
            SettingsDetailRowView(icon: nil,
                                  title: String.Localizable.settingsAppVersionTitle,
                                  detailText: Bundle.main.appVersion)
        }
    }
}
