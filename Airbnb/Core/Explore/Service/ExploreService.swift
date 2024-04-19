//
//  ExploreService.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 19/04/2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
