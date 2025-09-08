//
//  ArrowIcon.swift
//  Pulse
//
//  Created by Patrick Niepel on 08.09.25.
//

import SwiftUI

struct ArrowIcon: View {
    var body: some View {
        Image.arrowIcon
            .frame(width: 14, height: 14, alignment: .trailing)
            .foregroundStyle(Color.secondaryText)
    }
}
