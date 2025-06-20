//
//  LandmarkDetailView.swift
//  DiscoverParis
//
//
//

import SwiftUI

struct LandmarkDetailView: View {
    let landmark: Landmark

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(landmark.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 500)
                    .cornerRadius(12)
                
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(landmark.description)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetailView(landmark: Landmark(
        id: 1,
        name: "Eiffel Tower",
        description: "An iconic symbol of Paris.",
        latitude: 48.8584,
        longitude: 2.2945,
        image: "Tour_Eiffel"
    ))
}
