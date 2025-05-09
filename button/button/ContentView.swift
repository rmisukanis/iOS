//
//  ContentView.swift
//  button
//
//  Created by Guest User on 09/05/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var displayedText = "Knock Knock"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(displayedText)
                .padding(.bottom,30)
            
            Button("Who's there?") {
                displayedText = "It's me!"
            }
            .border(Color.blue, width: 2)

        }
    }
}

#Preview {
    ContentView()
}


