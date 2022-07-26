//
//  HomeView.swift
//  Morze
//
//  Created by Mykhailo on 25.07.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 12) {
                
                Text("CREATE_ACCOUNT_TITLE".localized)
                    .font(
                        .system(
                            size: 16,
                            weight: .regular,
                            design: .default
                        )
                    )
                    .foregroundColor(Color.blue)
                    .padding(EdgeInsets(top: 0, leading: 36, bottom: 0, trailing: 36))
                    .multilineTextAlignment(.center)
                // MARK: - TODO navigate to Authorize view
                
                NavigationLink(destination: TransmitterView()) {
                    Text("AUTHORIZE".localized)
                        .padding(24)
                        .frame(height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .semibold))
                        .background(.green)
                        .cornerRadius(25)
                }
            }
            .navigationTitle("HOME_TAB".localized)
            .navigationBarTitleDisplayMode(.inline)
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
