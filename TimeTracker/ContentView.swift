//
//  ContentView.swift
//  TimeTracker
//
//  Created by Serena W on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, lightPink, lightPink, Color.white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                // Text field for the app name
                Text("CraftTimer")
                    .font(.title)
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
