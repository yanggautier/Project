//
//  ListCategoryView.swift
//  Project
//
//  Created by Guole YANG on 05/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI

struct ListCategoryView: View {
    var body: some View {
        List(Site.CategorySite.allCases, id: \.rawValue) { category  in
            
            VStack(alignment: .leading) {
                Text(category.rawValue)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                Section {
                    // BEGIN SLIDER HORIZONTAL
                    ScrollView(.horizontal, content: {
                        HStack(spacing: 10) {

                            ForEach(SiteData.sites.map { SiteViewModel(site: $0) }.filter { $0.site.category == category
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

struct ListCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ListCategoryView()
    }
}
