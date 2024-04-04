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
            
            let screenSize: CGRect = UIScreen.main.bounds

            // Header:::
            ZStack{
                let headerx = screenSize.width / 2
                let headery = screenSize.height * 0.15
//                VStack{
//                    Text("x: \(headerx), \n y: \(headery)")
//                    Text("width: \(screenSize.width), \n height: \(screenSize.height)")
//                }
                RoundedRectangle(cornerRadius: 10)
                                .fill(lightPink)
                                .frame(width: screenSize.width, height: screenSize.height * 0.17)
                                .position(x: screenSize.width/2, y: 0)
                VStack{
                    Text("TimeTracker")
                        .font(.custom("Georgia Bold", size: 30))
                        //.padding(.bottom, 200)
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("🏠")
                        })
                    }
                    Spacer()
                }
            }
            
//            VStack{
//                // Text field for the app name
//                Text("CraftTimer")
//                    .font(.title)
//                
//                RoundedRectangle(cornerRadius: 25)
//                            .fill(.green)
//                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 75, alignment: .center)
//            }
//            .padding()
        }
    }
}

#Preview {
    ContentView()
}
