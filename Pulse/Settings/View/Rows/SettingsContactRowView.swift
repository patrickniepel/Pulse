//
//  SettingsContactRowView.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import SwiftUI

struct SettingsContactRowView: View {
    @State private var didSelect: Bool = false

    var body: some View {
        SettingsActionRowView(icon: .contactIcon,
                              title: String.Localizable.settingsContactTitle,
                              didSelect: $didSelect)
        .onChange(of: didSelect) { _, newValue in
            guard newValue else { return }

            didSelect = false
            presentMailSheet()
        }
    }

    private func presentMailSheet() {
        guard let url = URL(string: "message://"),
              UIApplication.shared.canOpenURL(url)else { return }

        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
