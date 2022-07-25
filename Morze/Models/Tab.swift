//
//  Tab.swift
//  Morze
//
//  Created by Mykhailo on 25.07.2022.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var color: Color
    var selection: Tab
}

var tabItems: [TabItem] = [
    TabItem(text: "HOME_TAB".localized, icon: "TabBar-Home", color: Color.purple , selection: .home),
    TabItem(text: "TRANSMITTER_TAB".localized, icon: "TabBar-Transmitter", color: Color.purple , selection: .transmitter),
    TabItem(text: "SETTINGS".localized, icon: "TabBar-Settings" , color: Color.purple, selection: .settings)
]

enum Tab: String {
    case home
    case transmitter
    case settings
}
