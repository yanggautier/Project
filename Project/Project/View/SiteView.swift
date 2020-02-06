//
//  SiteView.swift
//  Project
//
//  Created by Guole YANG on 03/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct SiteView: View {
    
    @State private var isPresented = false
    let siteViewModel: SiteViewModel
    
    var body: some View {
        
        Button(action: {
            self.isPresented.toggle()
        }, label: {
            VStack(alignment: .leading){
                Image(siteViewModel.site.images[0]).resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(siteViewModel.site.name)
            }
        }).sheet(isPresented: $isPresented) { DetailView(/*showPlaceDetails: .constant(true), */site: self.siteViewModel.site)
        }.buttonStyle(PlainButtonStyle())
    }
}
