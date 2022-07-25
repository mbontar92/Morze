//
//  TabView.swift
//  Morze
//
//  Created by Mykhailo on 25.07.2022.
//

import SwiftUI

struct MorzeTabView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image("TabBar-Home").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                }
            
            TransmitterView()
                .tabItem {
                    Image("TabBar-Transmitter").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                }
            
            SettingsView()
                .tabItem {
                    Image("TabBar-Settings").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                }
        }
        .background(Color.backgroundMorze)
        .accentColor(Color.blue)
        .ignoresSafeArea()
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MorzeTabView()
    }
}

extension UITabBarController {
    open override func viewWillLayoutSubviews() {
        // Apperance
        self.tabBar.barTintColor = .green
        self.tabBar.unselectedItemTintColor = UIColor.gray.withAlphaComponent(0.4)
        self.tabBar.isTranslucent = false
        // Icon top padding
        let array = self.viewControllers
        for controller in array! {
            controller.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -5, right: 0)
        }
    }
}
