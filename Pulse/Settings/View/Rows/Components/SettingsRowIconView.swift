//
//  SettingsRowIconView.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import SwiftUI

struct SettingsRowIconView: View {
    let icon: Image

    var body: some View {
        icon
            .frame(width: 20, height: 20)
            .foregroundStyle(Color.secondaryText)
    }
}
