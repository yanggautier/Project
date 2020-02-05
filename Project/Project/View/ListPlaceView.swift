//
//  ListPlaceView.swift
//  Project
//
//  Created by Guole YANG on 05/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct ListPlaceView: View {
    var body: some View {
        List(City.allCases, id: \.rawValue) { city  in
            
            VStack(alignment: .leading) {
                Text(city.rawValue)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                Section {
                    // BEGIN SLIDER HORIZONTAL
                    ScrollView(.horizontal, content: {
                        HStack(spacing: 10) {

                            ForEach(SiteData.sites.map { SiteViewModel(site: $0) }.filter { $0.site.city == city
                            } , id: \.id) {
                                siteViewModel in
                                SiteView(siteViewModel: siteViewModel)
                            }
                        }//.padding(10)

                    }).frame(height: 190)
                    // END SLIDER HORIZONTAL
                }
            }.padding(5)
        }
    }
}

struct ListPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        ListPlaceView()
    }
}
