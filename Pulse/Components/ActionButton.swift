//
//  ActionButton.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

struct ActionButton: View {
    let text: LocalizedStringKey
    let action: () -> Void

    private let height: CGFloat = 44

    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .frame(maxWidth: .infinity, minHeight: height)
                .foregroundStyle(Color.primaryTextInverted)
                .font(.system(size: 18, weight: .bold))
        }
        .frame(maxWidth: .infinity, minHeight: height)
        .background(Color.accent)
        .cornerRadius(8)
    }
}

#Preview {
    ActionButton(text: "Let's Go", action: {})
        .padding(.horizontal, 20)
}
