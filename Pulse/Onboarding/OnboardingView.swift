//
//  OnboardingView.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage(UserDefaults.Key.isOnboardingCompleted) private var isOnboardingCompleted: Bool = false
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        content
            .background(Color.background)
    }

    @ViewBuilder
    private var content: some View {
        VStack(spacing: 0) {
            Spacer()

            ZStack {
                timerImage

                VStack(spacing: 0) {
                    title
                        .padding(.bottom, 20)

                    subtitle
                }
            }

            Spacer()

            description

            Spacer()

            actionButton

            Spacer()
        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var timerImage: some View {
        Image.timerIcon
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .opacity(colorScheme == .dark ? 0.1 : 0.05)
            .foregroundStyle(Color.accent)
    }

    @ViewBuilder
    private var title: some View {
        Text(String.Localizable.onboardingTitleText)
            .foregroundStyle(Color.accent)
            .font(.system(size: 80, weight: .bold))
    }

    @ViewBuilder
    private var subtitle: some View {
        Text(String.Localizable.onboardingSubtitleText)
            .foregroundStyle(Color.primaryText)
            .font(.system(size: 24, weight: .bold))
            .multilineTextAlignment(.center)
    }

    @ViewBuilder
    private var description: some View {
        VStack(spacing: 5) {
            Group {
                Text(String.Localizable.onboardingNoAccountText)
                Text(String.Localizable.onboardingNoAdsText)
                Text(String.Localizable.onboardingNoSubscriptionsText)
            }
            .foregroundStyle(Color.secondaryText)
            .font(.system(size: 18, weight: .medium))
        }
    }

    @ViewBuilder
    private var actionButton: some View {
        ActionButton(text: String.Localizable.onboardingActionButtonText) {
            isOnboardingCompleted = true
        }
        .shadow(radius: 10)
    }
}

#Preview {
    OnboardingView()
}
