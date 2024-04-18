//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 18/04/2024.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    var body: some View {
        VStack {
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            }   label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            Text("Where to?")
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
