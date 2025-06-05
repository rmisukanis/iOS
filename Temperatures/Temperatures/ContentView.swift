import SwiftUI

struct ContentView: View {
    @State private var kelvin: Double = 300

    var celsius: Double {
        kelvin - 273.15
    }

    var fahrenheit: Double {
        (kelvin - 273.15) * 9 / 5 + 32
    }

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    // Celsius
                    VStack {
                        Spacer()
                        Text("Celsius")
                            .font(.headline)
                        Text(String(format: "%.2f", celsius))
                            .font(.title2)
                        Spacer()
                    }
                    .frame(width: geometry.size.width / 3)
                    .background(Color.red)

                    // Fahrenheit
                    VStack {
                        Spacer()
                        Text("Fahrenheit")
                            .font(.headline)
                        Text(String(format: "%.2f", fahrenheit))
                            .font(.title2)
                        Spacer()
                    }
                    .frame(width: geometry.size.width / 3)
                    .background(Color.blue)

                    // Kelvin
                    VStack {
                        Spacer()
                        Text("Kelvin")
                            .font(.headline)
                        Text(String(format: "%.2f", kelvin))
                            .font(.title2)
                        Spacer()
                    }
                    .frame(width: geometry.size.width / 3)
                    .background(Color.green)
                }
                .foregroundColor(.black)

                // Slider
                Slider(value: $kelvin, in: 0...600)
                    .accentColor(.yellow)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
