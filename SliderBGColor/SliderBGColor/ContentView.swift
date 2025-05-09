import SwiftUI
 
struct ContentView: View {

     // State variables to store the RGB values (0.0 to 1.0)
    @State private var red: Double = 1.0
    @State private var green: Double = 1.0
    @State private var blue: Double = 1.0
 
    // Computed property to create the background color based on RGB values

     var backgroundColor: Color {
         Color(red: red, green: green, blue: blue)
     }
 
    var body: some View {
         VStack {
             // Background color of the view
             Rectangle()
                 .fill(backgroundColor)
                 .edgesIgnoringSafeArea(.all)  // Make it cover the entire screen
            // HStack to hold each RGB column (Slider + Label + Value)
             HStack(spacing: 20) {
                 // Red Column
                 VStack {
                     Slider(value: $red, in: 0...1)
                         .accentColor(.blue)
                     HStack {
                         Text("Red")
                             .font(.headline)
                         Text("Value: \(Int(red * 255))")
                             .frame(width: 50, alignment: .leading)
                     }
                 }
                // Green Column
                 VStack {
                     Slider(value: $green, in: 0...1)
                         .accentColor(.blue)
                     HStack {
                         Text("Green")
                             .font(.headline)
                         Text("Value: \(Int(green * 255))")
                             .frame(width: 50, alignment: .leading)
                     }
                 }
                // Blue Column
                 VStack {
                     Slider(value: $blue, in: 0...1)
                         .accentColor(.blue)
                     HStack {
                         Text("Blue")
                             .font(.headline)
                         Text("Value: \(Int(blue * 255))")
                             .frame(width: 50, alignment: .leading)
                     }
                 }
             }

             .padding()

             .frame(maxWidth: .infinity) // Make sure the HStack takes up the whole width

         }

     }

 }
 
#Preview {

     ContentView()

 }
