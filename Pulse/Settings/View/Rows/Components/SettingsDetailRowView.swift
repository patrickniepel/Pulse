//
//  SettingsDetailRowView.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import SwiftUI

struct SettingsDetailRowView: View {
    let icon: Image?
    let title: LocalizedStringKey
    let detailText: String

    var body: some View {
        HStack(spacing: 0) {
            if let icon {
                SettingsRowIconView(icon: icon)
                    .padding(.trailing, 10)
            }

            SettingsRowTitleView(title: title)

            Text(detailText)
                .foregroundStyle(Color.secondaryText)
                .font(.system(size: 18))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
