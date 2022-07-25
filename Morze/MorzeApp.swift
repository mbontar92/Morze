//
//  MorzeApp.swift
//  Morze
//
//  Created by Mykhailo on 25.07.2022.
//

import SwiftUI

@main
struct MorzeApp: App {
    
    @State var selectedTab: Tab = .home
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                Group {
                    switch selectedTab {
                    case .home:
                        HomeView()
                    case .transmitter:
                        TransmitterView()
                    case .settings:
                        SettingsView()
                    }
                }
                
                MorzeTabBar(selectedTab: $selectedTab)
            }
            .safeAreaInset(edge: .bottom) {
                VStack {}.frame(height: 44)
            }
        }
    }
}
