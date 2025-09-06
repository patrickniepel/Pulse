//
//  Tab.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

enum Tab: Identifiable, CaseIterable {
    case timer
    case settings

    var id: Tab { self }

    @ViewBuilder
    var destination: some View {
        switch self {
        case .timer:
            TimerView()

        case .settings:
            SettingsView()
        }
    }

    var image: Image {
        switch self {
        case .timer:
            Image(systemName: "timer.circle").renderingMode(.template)

        case .settings:
            Image(systemName: "gearshape").renderingMode(.template)
        }
    }
}
