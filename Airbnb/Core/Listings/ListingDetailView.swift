//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 13/04/2024.
//

import SwiftUI

struct ListingDetailView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    var body: some View {
        ScrollView {
            ListingImageCarouselView()
                .frame(height: 320)
        }
    }
}

#Preview {
    ListingDetailView()
}
