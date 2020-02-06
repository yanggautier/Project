//
//  SignInView.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    
    var grayBackground: Color = Color.gray.opacity(0.2)
    
    var body: some View {
        NavigationView{
            VStack(spacing:80){
                VStack{
                    Text("Connexion")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                        .padding(.bottom, 20)
                    TextField("Email", text: $email)
                        .padding()
                        .background(grayBackground)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    SecureField("Password", text: $password)
                        .padding()
                        .background(grayBackground)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    
                }
                
                NavigationLink(destination: ProfilView()){
                    Text("Connecter")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.gray)
                        .cornerRadius(15.0)
                }
                
                //            Button(action: SignInView){
                //                Text("Connecter à mon compte")
                //                    .frame(minWidth:8, maxWidth: .infinity)
                //                    .frame(height: 50)
                //                    .foregroundColor(.white)
                //                .font()
                //            }
                VStack{
                    Text("Si vous n'avez compte")
                    
                    NavigationLink(destination: SignUpView()){
                        Text("Créer un compte")
                    }
                }
                
            }.padding()
        }//.navigationBarTitle(Text("Créer un compte"), displayMode: .inline)
        
    }
}
struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
