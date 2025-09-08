//
//  SettingsShareRowView.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import SwiftUI
import UIKit

struct SettingsShareRowView: View {
    @State private var didSelect: Bool = false

    var body: some View {
        SettingsActionRowView(icon: .shareIcon,
                              title: String.Localizable.settingsShareTitle,
                              didSelect: $didSelect)
        .onChange(of: didSelect) { _, newValue in
            guard newValue else { return }

            didSelect = false
            presentShareSheet()
        }
    }

    private func presentShareSheet() {
        let activityCtrl = UIActivityViewController(activityItems: [], applicationActivities: nil)

        let windowScene = (UIApplication.shared.connectedScenes
            .first(where: { $0 is UIWindowScene }) as? UIWindowScene)
        windowScene?.windows.first?.rootViewController?.present(activityCtrl, animated: true)
    }
}
