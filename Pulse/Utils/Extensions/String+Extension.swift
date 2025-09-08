//
//  String+Extension.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

extension String {
    enum Localizable {
        static let onboardingActionButtonText = LocalizedStringKey(stringLiteral: "onboarding_action_button_text")
        static let onboardingTitleText = LocalizedStringKey(stringLiteral: "onboarding_title_text")
        static let onboardingSubtitleText = LocalizedStringKey(stringLiteral: "onboarding_subtitle_text")
        static let onboardingNoAdsText = LocalizedStringKey(stringLiteral: "onboarding_no_ads_text")
        static let onboardingNoAccountText = LocalizedStringKey(stringLiteral: "onboarding_no_account_text")
        static let onboardingNoSubscriptionsText = LocalizedStringKey(stringLiteral: "onboarding_no_subscriptions_text")

        static let settingsTitle = LocalizedStringKey(stringLiteral: "settings_title")
        static let settingsShareTitle = LocalizedStringKey(stringLiteral: "settings_share_title")
        static let settingsContactTitle = LocalizedStringKey(stringLiteral: "settings_contact_title")
        static let settingsRateTitle = LocalizedStringKey(stringLiteral: "settings_rate_title")
        static let settingsAppVersionTitle = LocalizedStringKey(stringLiteral: "settings_app_version_title")
    }
}
