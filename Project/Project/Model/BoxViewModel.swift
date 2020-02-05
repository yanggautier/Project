//
//  BoxViewModelb.swift
//  Project
//
//  Created by Guole YANG on 30/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct BoxViewModel: Hashable, Codable, Identifiable{
    var id = UUID()
    var title, imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
    init(box: Box) {
        self.title = box.name
        self.imageName = box.images[0]
    }
}

struct CategoryRow: View {
    
    var choixSegmented: String
    
    var choixSegmentedInteret: [BoxViewModel] {
        return BoxData.boxes.map { (box) -> BoxViewModel in
            return BoxViewModel(box: box)
        }
    }
    
    var choixSegmentedLieux = [
        BoxViewModel(title: "food", imageName: "lakemcdonald"),
        BoxViewModel(title: "stade", imageName: "stmarylake"),
        BoxViewModel(title: "etc", imageName: "rainbowlake"),
        BoxViewModel(title: "New", imageName: "icybay"),
        BoxViewModel(title: "test", imageName: "silversalmoncreek"),
        BoxViewModel(title: "lieu", imageName: "hiddenlake")
    ]
    
   
    var body: some View {
        
        VStack(alignment: .leading) {
       //print("boxsData")
            if choixSegmented == "Interets"{
            Text("Sports").fontWeight(.medium).padding(10).font(.system(size: 25))
            }else{
            Text("Paris").fontWeight(.medium).padding(10).font(.system(size: 25))
            }
            
            // BEGIN SLIDER HORIZONTAL
            ScrollView(.horizontal, content: {
                HStack(spacing: 10) {
                    if choixSegmented == "Interets" {

                        ForEach(choixSegmentedInteret, id: \.id) {
                            box in BoxView(box: box)
                        }
                    }else{

                        ForEach(choixSegmentedLieux, id: \.id) {
                            box in BoxView(box: box)
                        }
                    }
                }.padding(10)
                
            }).frame(height: 190)
            // END SLIDER HORIZONTAL
        }.padding(.top, -10)
    }
}

struct BoxView: View {
    
    @State private var isPresented = false
    let box: BoxViewModel
    
    var body: some View {
        
        Button(action: {
            self.isPresented.toggle()
        }, label: {
            VStack(alignment: .leading){
                Image(box.imageName).resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(box.title)
            }
        }).sheet(isPresented: $isPresented) { () -> Text in
            Text("\(self.box.title)")
        }.buttonStyle(PlainButtonStyle())
        
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(choixSegmented: "Interets")
    }
}
