//
//  SignUpView.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct SignUpView: View {

    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""

    var grayBackground: Color = Color.gray.opacity(0.2)
    
    var body: some View {
        VStack{
            Text("Inscription")
                .font(.largeTitle)
                .foregroundColor(.gray)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            TextField("Username", text: $username)
                .padding()
                .background(grayBackground)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(grayBackground)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField("Email", text: $email)
                .padding()
                .background(grayBackground)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {

            }){
                Text("Créer un compte")
                 .font(.headline)
                 .foregroundColor(.white)
                 .padding()
                 .frame(width: 220, height: 60)
                    .background(Color.gray)
                 .cornerRadius(15.0)
            }
            Text("By creating an account, you agree to our Term")
        }.padding()
    }
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
