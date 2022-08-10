//
//  LogInView.swift
//  Morze
//
//  Created by Mykhailo on 09.08.2022.
//

import SwiftUI

struct LogInView: View {
    
    @State var username: String = ""
    
    var body: some View {
        VStack {
            LoginTextFieldView(
                title: "EMAIL".localized,
                icon: "mail-icon"
            ) { text in
                print(text)
            }
            .padding()
            
            LoginTextFieldView(
                title: "PASSWORD".localized,
                icon: "password-key-icon"
            ) { text in
                print(text)
            }
            .padding()
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

private struct LoginTextFieldView: View {
    let title: String
    let icon: String
    
    @State var textFieldText: String = ""
    
    var onTextChanged: ((String) -> Void)?
    
    init(
        title: String,
        icon: String,
        action: @escaping (String) -> Void
    ) {
        self.title = title
        self.icon = icon
        self.onTextChanged = action
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.gray, lineWidth: 3)
                )
                .frame(height: 40)
                .cornerRadius(8)
            HStack {
                Image(icon)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16, alignment: .center)
                    .padding()
                TextField(title,
                          text: $textFieldText,
                          onEditingChanged: { text in
                    
                    onTextChanged?(textFieldText)
                    
                    print("Username onEditingChanged - \(text)")
                }) {
                    print("Username onCommit")
                }
                
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold))
            }
        }
    }
}

