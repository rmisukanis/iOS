//
//  ContentView.swift
//  DiscoverParis
//
//  Created by m1 on 19/06/2025.
//
import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        TabView {
            LandmarkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
            LandmarkMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        }
    }
}

struct LandmarkListView: View {
    let landmarks = LandmarkDataService.loadLandmarks()

    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: Text(landmark.description)) {
                    Text(landmark.name)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    let landmarks = LandmarkDataService.loadLandmarks()

    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region, annotationItems: landmarks) { landmark in
                MapPin(coordinate: CLLocationCoordinate2D(latitude: landmark.latitude, longitude: landmark.longitude))
            }
            .navigationTitle("Map View")
        }
    }
}

struct Landmark: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let latitude: Double
    let longitude: Double
}

struct LandmarkDataService {
    static func loadLandmarks() -> [Landmark] {
        guard let url = Bundle.main.url(forResource: "landmarks", withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            return []
        }

        let decoder = JSONDecoder()
        return (try? decoder.decode([Landmark].self, from: data)) ?? []
    }
}





#Preview {
    ContentView()
}
