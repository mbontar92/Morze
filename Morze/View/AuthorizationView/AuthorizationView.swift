//
//  AuthorizationView.swift
//  Morze
//
//  Created by Mykhailo on 27.07.2022.
//

import SwiftUI
import Introspect

struct AuthorizationView: View {
    
    @State var uiTabarController: UITabBarController?
    private var size = UIScreen.main.bounds
    
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            Text("WELCOME".localized)
                .font(.system(size: 36,weight: .semibold, design: .default))
                .multilineTextAlignment(.center)
            
            Text("CONTINUE_WITH".localized)
                .font(.system(size: 16,weight: .medium, design: .default))
                .multilineTextAlignment(.center)
            
            Button(action: {
                print("login google")
            }, label: {
                HStack(alignment: .center, spacing: 0) {
                    HStack(alignment: .center, spacing: 12) {
                        Image("Google-Icon")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                        Text("Google")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .semibold))
                    }
                }
            })
            
            .frame(height: 50)
            .frame(maxWidth: size.width - 30)
            .background(.orange)
            .cornerRadius(25)
            
            HStack {
                Rectangle()
                    .fill(.green)
                    .frame(height: 2)
                Spacer()
                Text("OR_WITH_EMAIL".localized)
                    .lineLimit(1)
                Spacer()
                Rectangle()
                    .fill(.green)
                    .frame(height: 2)
            }
            .padding()
            
            HStack(alignment: .center, spacing: 3) {
                
                AuthButtonView(
                    title: "REGISTER".localized,
                    roundedCorners: [.topLeft, .bottomLeft],
                    action: {
                        print("REGISTER did pressed")
                    }
                )
                
                AuthButtonView(
                    title: "LOGIN".localized,
                    roundedCorners: [.topRight, .bottomRight]) {
                        print("LOGIN did pressed")
                    }
            }
            .padding()
        }
        
        .navigationBarTitle("AUTHORIZE".localized, displayMode: .inline)
        
        #warning("todo hide tabbar")
//        .introspectTabBarController { UITabBarController in
//            uiTabarController = UITabBarController
//            UITabBarController.tabBar.isHidden = true
//        }
//        .onDisappear{
//            uiTabarController?.tabBar.isHidden = false
//        }
    }
}

struct AuthorizationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorizationView()
    }
}


private struct AuthButtonView: View {
    let title: String
    let roundedCorners: UIRectCorner
    
    var onDidPressed: (() -> Void)?
    
    init(
        title: String,
        roundedCorners: UIRectCorner,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.roundedCorners = roundedCorners
        self.onDidPressed = action
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(height: 40)
                .cornerRadius(20, corners: roundedCorners)
            Button(
                action: {
                    onDidPressed?()
                }
            ) {
                Text(title)
            }
            .foregroundColor(.white)
            .font(.system(size: 16, weight: .semibold))
        }
    }
}
