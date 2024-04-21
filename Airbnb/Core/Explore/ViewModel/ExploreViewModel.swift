//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 19/04/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListing() }
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation(_ location: String) {
        let filteredListings = listings.filter({
            $0.city.lowercased() == location.lowercased() ||
            $0.state.lowercased() == location.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listings : filteredListings
    }
}
