//
//  SettingsRateRowView.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import StoreKit
import SwiftUI

struct SettingsRateRowView: View {
    @Environment(\.requestReview) var requestReview
    @State private var didSelect: Bool = false

    var body: some View {
        SettingsActionRowView(icon: .rateIcon,
                              title: String.Localizable.settingsRateTitle,
                              didSelect: $didSelect)
        .onChange(of: didSelect) { _, newValue in
            guard newValue else { return }

            didSelect = false
            requestReview()
        }
    }
}
