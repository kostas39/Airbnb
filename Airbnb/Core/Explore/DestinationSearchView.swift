//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Kostas Koliolios on 18/04/2024.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
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
            
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            //date selection view
            VStack {
                HStack {
                    Text("When")
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    Text("Add dates")
                }
                .fontWeight(.semibold)
                .font(.subheadline)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            
            //num guests view
            VStack {
                
            }
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
