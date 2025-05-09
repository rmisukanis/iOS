//
//  ContentView.swift
//  zstack
//
//  Created by Guest User on 09/05/2025.
//

import SwiftUI

struct ContentView: View {

     var body: some View {

         ZStack { // ZStack layers views on top of each other

             // The red background
             Color.red.ignoresSafeArea()
 
            // The square
            Rectangle()
                 .fill(Color.green)
                 .stroke(Color.black, lineWidth: 2)
                 .frame(width: 250, height: 250)
 
            Circle() // The circle
                 .fill(Color.blue)
                 .stroke(Color.black, lineWidth: 2)
                 .frame(width: 150, height: 150)
                 
             
             // The text
            Text("SwiftUI")
                 .foregroundColor(.black)
                 .foregroundColor(.blue)
                 .font(.headline)

         }

     }

 }
 
struct ContentView_Previews: PreviewProvider {

     static var previews: some View {

         ContentView()

     }

 }
