//
//  SettingsActionRowView.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import SwiftUI

struct SettingsActionRowView: View {
    let icon: Image
    let title: LocalizedStringKey

    @Binding var didSelect: Bool

    var body: some View {
        Button {
            didSelect = true
        } label: {
            HStack(spacing: 0) {
                SettingsRowIconView(icon: icon)
                    .padding(.trailing, 10)

                SettingsRowTitleView(title: title)

                ArrowIcon()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
