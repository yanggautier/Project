//
//  FeatureCard.swift
//  Project
//
//  Created by Guole YANG on 29/01/2020.
//  Copyright © 2020 Guole YANG. All rights reserved.
//

/*
import SwiftUI

struct SiteCard: View {
    var site = Site(
    images: ["simplon", "total"],
    coordinates: Coordinates(latitude:-116.166868 , longitude:34.011286),
    name: "Simplon",
    country: "France",
    city: "Paris",
    category: SiteCategory.Monument,
    adresse:" ferbfjhergbehrgerbhj",
    isFavorite: true,
    isFeatured: true)
    var body: some View {
        
        Image(site.images[0])
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay(TextOverlay(site: site))
        
    }
}

struct TextOverlay: View {
    
    var site: Site
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            VStack(alignment: .leading) {
                Text(site.name)
                    .font(.title)
                    .bold()
                Text(site.city)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct SiteCard_Previews: PreviewProvider {
    static var previews: some View {
        SiteCard(site: site)
    }
}
*/
