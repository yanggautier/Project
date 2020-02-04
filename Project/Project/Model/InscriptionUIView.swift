//
//  InscriptionUIView.swift
//  Map first appli voyage
//
//  Created by malika on 31/01/2020.
//  Copyright © 2020 malika ouizbouben. All rights reserved.
//

import SwiftUI

struct InscriptionUIView: View {
    @State var username: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                /*Image("fond1")
                    .resizable()*/
                    
            VStack(spacing: 40) {
                Text("Veuillez vous enregistrer")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
            VStack(alignment: .leading, spacing: 30) {
                TextField("Entrer votre E-mail...", text:  $username).padding()
                TextField("Entrer votre votre mot de passe...", text:  $username).padding()
                TextField("Confirmer votre mot de passe...", text:  $username).padding()
            }.padding().textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.black)
            .navigationBarTitle("Inscription", displayMode: .inline)
               
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Créer votre compte")
                    .font(.body)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 100.0)
                    .padding(.vertical, 25)
                    .background(Color.blue)
                .cornerRadius(15)
                
            }
            
            }.opacity(0.7)
            }
        }
    }
}

struct InscriptionUIView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionUIView()
    }
}
