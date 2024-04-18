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
            CollapsedPickerView(title: "When", description: "Add dates")
            
            //num guests view
            CollapsedPickerView(title: "Who", description: "Add guests")
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
