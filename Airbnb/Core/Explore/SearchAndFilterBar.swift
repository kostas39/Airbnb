//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 12/04/2024.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyinglass")
                
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add Guests")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
        Spacer()
         
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
    }
}

#Preview {
    SearchAndFilterBar()
}
