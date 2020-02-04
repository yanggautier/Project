//
//  PageView.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
/*
import SwiftUI

struct PageView<Page: View>: View {
    var site: Site
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        VStack {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
    }
}

struct PageView_Preview: PreviewProvider {
    static var previews: some View {
        PageView(site.images.map { SiteCard(site: $0) })
            .aspectRatio(3/2, contentMode: .fit)
    }
}
*/
