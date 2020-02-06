//
//  SiteViewModel.swift
//  Project
//
//  Created by Guole YANG on 03/02/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//
import SwiftUI

struct SiteViewModel: Hashable, Codable, Identifiable{

    var id = UUID()
    var site: Site

    init(site: Site) {
        self.site = site
    }
}
