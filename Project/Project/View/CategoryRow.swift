//
//  CategoryRow.swift
//  Project
//
//  Created by Guole YANG on 03/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

import SwiftUI


struct CategoryRow: View {
    
    var choixSegmented: String
    
    var choixSegmentedInteret: [SiteViewModel] {
        return SiteData.sites.map { (site) -> SiteViewModel in
            return SiteViewModel(site: site)
        }
    }
   
    var body: some View {
        ZStack{
            if choixSegmented == "Interets" {
                ListCategoryView()
            }else{
                ListPlaceView()
            }
        }
    }
}


struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(choixSegmented: "Interets")
    }
}
