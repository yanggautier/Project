//
//  DecouvrirView.swift
//  Project
//
//  Created by Guole YANG on 05/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        VStack(spacing: 20) {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Découvrir Londres")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                    Text("Jour 1")
                        .font(.headline)
                        .fontWeight(.bold)
                }.padding()
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("The Big Ben de 10H00 à 12H00")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Image("big ben")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                    Text("The Abbaye of Westminster de 14H00 à 16H00 ")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Image("westminster2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                    Text("The London Eye à 18H00")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Image("london eye-2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                }.padding()
                
                ScrollView(.horizontal) {
                    HStack {
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Jour 2")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 30.0)
                                .padding(.vertical, 20)
                                .background(Color.purple)
                                .cornerRadius(15)
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Jour 3")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 30.0)
                                .padding(.vertical, 20)
                                .background(Color.purple)
                                .cornerRadius(15)
                        }
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Jour 4")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 30.0)
                                .padding(.vertical, 20)
                                .background(Color.purple)
                                .cornerRadius(15)
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Jour 5")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 30.0)
                                .padding(.vertical, 20)
                                .background(Color.purple)
                                .cornerRadius(15)
                        }
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Jour 6")
                                .font(.body)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 30.0)
                                .padding(.vertical, 20)
                                .background(Color.purple)
                                .cornerRadius(15)
                        }
                    }
                }.padding()
                
                
            }
        }
    }
}

struct DecouvrirView_Previews: PreviewProvider {
    static var previews: some View {
        DecouvrirView()
    }
}
