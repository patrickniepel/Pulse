//
//  ContentView.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(UserDefaults.Key.isOnboardingCompleted) private var isOnboardingCompleted: Bool = false

    var body: some View {
        if isOnboardingCompleted {
            tabView
                .pagingTransition()
        } else {
            onboarding
        }
    }

    @ViewBuilder
    private var tabView: some View {
        TabView()
    }

    @ViewBuilder
    private var onboarding: some View {
        OnboardingView()
    }
}
