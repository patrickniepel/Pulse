//
//  Bundle+Extension.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import Foundation

extension Bundle {
    var appVersion: String {
        infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
}
