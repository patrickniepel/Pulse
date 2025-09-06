//
//  View+Extension.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

extension View {
    @ViewBuilder
    func pagingTransition() -> some View {
        self.transition(.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading))
        )
        .animation(.default)
    }
}
