//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 11/04/2024.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            //images
            Rectangle()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing details
            
            HStack{
                //details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack{
                        Text("£567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                //rating
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
