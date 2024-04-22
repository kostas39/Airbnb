//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 19/04/2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "my-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["la1", "la2", "la3", "la4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv ],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Joe Doe",
            ownerImageUrl: "my-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["miami1", "miami2", "miami3", "miami4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Beach House",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .kitchen, .laundry, .tv ],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "my-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["miami5", "miami6", "miami7", "miami8"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Beatiful Miami apartment in downtown Brickell",
            rating: 4.36,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv ],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Eva Fotiadou",
            ownerImageUrl: "my-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 34.0393,
            longitude: -118.59965,
            imageURLs: ["malibu1", "malibu2", "malibu3", "malibu4"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beatiful Los Angeles home in Malibu",
            rating: 4.97,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv, .pool ],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Kostas Koliolios",
            ownerImageUrl: "my-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["hills1", "hills2", "hills3", "hills4"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beatiful Los Angeles home in Hollywood Hills",
            rating: 4.99,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv, .pool, .office ],
            type: .villa
        ),
    ]
}
