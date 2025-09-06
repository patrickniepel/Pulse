//
//  OnboardingView.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage(UserDefaults.Key.isOnboardingCompleted) private var isOnboardingCompleted: Bool = false

    var body: some View {
        content
            .background(Color.background)
    }

    @ViewBuilder
    private var content: some View {
        VStack(spacing: 0) {
            Spacer()

            Text("Welcome to Pulse")
                .foregroundStyle(Color.secondaryText)

            Spacer()

            ActionButton(text: String.Localizable.onboardingActionButtonText) {
//                isOnboardingCompleted = true
            }
            .shadow(radius: 10)
        }
        .padding(.horizontal, 20)
    }
}
