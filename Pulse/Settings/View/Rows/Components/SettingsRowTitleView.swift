//
//  SettingsRowTitleView.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import SwiftUI

struct SettingsRowTitleView: View {
    let title: LocalizedStringKey

    var body: some View {
        Text(title)
            .foregroundStyle(Color.primaryText)
            .font(.system(size: 18))
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}
