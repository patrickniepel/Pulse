//
//  TabView.swift
//  Pulse
//
//  Created by Patrick Niepel on 06.09.25.
//

import SwiftUI

struct TabView: View {
    @State private var selectedTab: Tab = .timer

    var body: some View {
        SwiftUI.TabView(selection: $selectedTab) {
            ForEach(Tab.allCases) { tab in
                tab
                    .destination
                    .tag(tab)
                    .tabItem {
                        tab.image
                    }
            }
        }
    }
}
