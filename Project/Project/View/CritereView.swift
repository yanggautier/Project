//
//  CritereView.swift
//  Project
//
//  Created by Guole YANG on 03/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//


import SwiftUI
struct CritereView: View {
    
    // @State var user: Traveler
    @Binding var showCritereView: Bool
    @Binding var centre:Coordinates
    @Binding var showButton: Bool
    
    @State var isOn = true
    @State var isOff = false
    @State var isOff1 = false
    @State var isOff2 = false
    @State var bouton = true
    //@State var sliderVal: Int = 0
    @State var lieu = "Saisir le lieu"
    @State private var sliderVal: Double = 0
    @State private var rythme: Double = 0
    @State private var Restaurant  = true
    @State private var  Sport = true
    @State private var  Muse = true
    @State private var  Music = true
    @State private var  Culture = true
    @State private var  Autre = true
    
    @State var bduree = true
    @State private var duree: Double = 0
    let array = ["Paris","Londre", "Madrid"]
    @State private var searchText = ""
    //var interet = ["Restaurant": false, "Sport":  true,"Musé": false,"Music": true,"Culture": false,"Autre": true]
    
    var interet = ["Restaurant", "Sport" ,"Musé","Music","Culture","Autre"]
    
    // @State private var selection = 0
    var body: some View{
        NavigationView{
            
            ScrollView{
                ZStack{
                    VStack {
                        HStack(alignment: .center, spacing: 31.0) {
                            Toggle("", isOn: $isOff1)
                                .toggleStyle(
                                    ColoredToggleStyle(label:"Localité",onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                .font(.system(size: 14))
                                .padding(.vertical,13)
                                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray,lineWidth: 1))
                                .padding(.horizontal,10)
                        }
                        
                        if self.isOff1 == true {
                            HStack {
                                TextField("Saisir un lieu",text:$searchText)
                                    .font(.headline)
                                    .foregroundColor(Color.black)           .multilineTextAlignment(.center)                   .padding(.horizontal, 1)                     .padding(.vertical, 5)
                                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                    .background(Color.white)
                                    .opacity(0.5)
                                    .cornerRadius(15)
                                    .offset(x: 15, y: 0)
                                Image(systemName: "magnifyingglass")
                                    .offset(x:-360)
                            }
                        }
                        HStack  {
                            
                            Toggle("", isOn: $isOff)
                                .toggleStyle(
                                    ColoredToggleStyle(label:"Budget",onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                .font(.system(size: 14))
                                .padding(.vertical,13)
                                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray,lineWidth: 1))
                                .padding(.horizontal,10)
                            
                        }
                        if self.isOff == true {
                            VStack {
                                Slider(value: $sliderVal, in: 100...1000, step: 100)
                                    .padding(.all, 18.0)
                                    .lineSpacing(0)
                                Text("Budget de \(Int(sliderVal)) €")
                                    
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                                    .padding(1)
                            }
                        }
                        
                        HStack  {
                            Toggle("", isOn: $isOn)
                                .toggleStyle(
                                    ColoredToggleStyle(label:"Centre d'interêts",onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                .font(.system(size: 14))
                                .padding(.vertical,13)
                                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray,lineWidth: 1))
                                .padding(.horizontal,10)
                        }
                        
                        ForEach(0..<interet.count) {
                            if self.isOn == true {
                                if self.interet[$0] == "Restaurant"{
                                    Toggle("test", isOn: self.$Restaurant)
                                        .toggleStyle(ColoredToggleStyle(label: self.interet[$0],onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                        .font(.headline)
                                        .padding(.horizontal,30) .foregroundColor(Color.gray)
                                        .frame(width: 391.0)
                                }
                                
                                if self.interet[$0] == "Musé"{
                                    Toggle("test", isOn: self.$Muse)
                                        .toggleStyle(ColoredToggleStyle(label: self.interet[$0],onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                        .font(.headline)
                                        .padding(.horizontal,30)
                                        .foregroundColor(Color.gray)
                                        .frame(width: 391.0)
                                }
                                
                                if self.interet[$0] == "Sport"{
                                    Toggle("test", isOn: self.$Sport)
                                        .toggleStyle(ColoredToggleStyle(label: self.interet[$0],onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                        .font(.headline)
                                        .padding(.horizontal,30) .foregroundColor(Color.gray)
                                        .frame(width: 391.0)
                                }
                            }
                        } .padding(-10)
                        ForEach(0..<interet.count) {
                            if self.isOn == true {
                                if self.interet[$0] == "Culture"{
                                    Toggle("test", isOn: self.$Culture)
                                        .toggleStyle(ColoredToggleStyle(label: self.interet[$0],onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                        .font(.headline)
                                        .padding(.horizontal,30)
                                        .foregroundColor(Color.gray)
                                        .frame(width: 391.0)
                                }
                                
                                if self.interet[$0] == "Autre"{
                                    Toggle("test", isOn: self.$Autre)
                                        .toggleStyle(ColoredToggleStyle(label: self.interet[$0],onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                        .font(.headline)
                                        .padding(.horizontal,30)
                                        .foregroundColor(Color.gray)
                                        .frame(width: 391.0)
                                }
                            }
                        } .padding(-10)
                        VStack  {
                            HStack  {
                                Toggle("", isOn: $isOff2)
                                    .toggleStyle(ColoredToggleStyle(label:"Rythme",onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                    .font(.system(size: 14))
                                    .padding(.vertical,13)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray,lineWidth: 1))
                                    .padding(.horizontal,10)
                            }
                            
                            if self.isOff2 == true {
                                VStack {
                                    Slider(value: $rythme, in: 100...1000, step: 100)
                                        .padding(0)
                                    Text("FAIBLE                    MOYEN                    FORT")
                                        .fontWeight(.light)
                                        .foregroundColor(Color.gray)
                                        .padding(0)
                                }
                                .padding()
                            }
                        }
                        
                        VStack  {
                            HStack  {
                                Toggle("", isOn: $bduree)
                                    .toggleStyle(ColoredToggleStyle(label:"Durée",onColor: .green,offColor: .gray,thumbColor: Color(UIColor.white)))
                                    .font(.system(size: 14))
                                    .padding(.vertical,13)
                                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray,lineWidth: 1))
                                    .padding(.horizontal,10)
                            }
                            
                            if self.bduree == true {
                                VStack {
                                    Slider(value: $duree, in: 1...100, step: 1)
                                        .padding(0)
                                    Text("Durée de \(Int(duree)) Jours")
                                        .fontWeight(.light)
                                        .foregroundColor(Color.gray)
                                        .padding(0)
                                }
                                .padding()
                            }
                        }
                        
                        Button(action: {
                            self.showCritereView = false
                            self.centre = Coordinates(latitude: 51.5073219, longitude: -0.1276474)
                            self.showButton = true
                            
                        }) {
                            Text("Validez")
                                .font(.body)
                                .foregroundColor(Color.white)              .multilineTextAlignment(.center)                     .padding(.horizontal, 80.0)                     .padding(.vertical, 15)                     .background(Color.green)
                                .cornerRadius(15)
                        }
                    }
                }
                .padding(0.0)
            }.navigationBarTitle("Critères", displayMode: .inline)   .navigationBarItems(
                trailing: Button(action:{
                    self.showCritereView = false
                }){
                    Text("Annuler")
                }
            )
        }
    }
}

struct ColoredToggleStyle: ToggleStyle {
    var label = ""
    var onColor = Color(UIColor.green)
    var offColor = Color(UIColor.systemGray5)
    var thumbColor = Color.white
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Text(label)
                .fontWeight(.light)
            Spacer()
            Button(action: { configuration.isOn.toggle() } )
            {
                RoundedRectangle(cornerRadius: 16, style: .circular)
                    .fill(configuration.isOn ? onColor : offColor)
                    .frame(width: 46, height: 25)
                    .overlay(
                        Circle()
                            .fill(thumbColor)
                            .shadow(radius: 1, x: 0, y: 1)
                            .padding(1.5)
                            .offset(x: configuration.isOn ? 10 : -10))
                    .animation(Animation.easeInOut(duration: 0.1))
            }
        }
        .font(.title)
        .padding(.horizontal)
    }
}



