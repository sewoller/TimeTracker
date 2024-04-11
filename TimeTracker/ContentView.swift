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
                                .frame(width: screenSize.width, height: screenSize.height * 0.18)
                                .position(x: screenSize.width/2, y: 0)
                VStack(spacing:2){
                    Text("TimeTracker")
                        .font(.custom("Georgia Bold", size: 30))
                        //.padding(.bottom, 200)
                    HStack{
                        //home page button
                        Button(action: {}){
                            Image(systemName: "house") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                        //list page button
                        Button(action: {}){
                            Image(systemName: "list.bullet") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                        //stats page button
                        Button(action: {}){
                            Image(systemName: "clock") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                        //about page button
                        Button(action: {}){
                            Image(systemName: "questionmark.app") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                    }
                    
                    let itemView = UIView()
                    
                    VStack{ // TIMER 1             f c
                        HStack{ // name and buttons
                            Text("App Development").font(.custom("Georgia", size: 28)).padding([.leading], 5)
                            Spacer() // keeps the title and the buttons on the sides
                            Button(action: {}){//start/stop button
                                Image(systemName:"play")
                                    .resizable() // allows resizing
                                    .aspectRatio(contentMode: .fit) // stops image from stretching
                                    .frame(width: 23, height: 23) // fits image within a frame
                            }.foregroundColor(.black).padding(5) //end play button
                            Button(action: {}){//edit button
                                Image(systemName:"pencil")
                                    .resizable() // allows resizing
                                    .aspectRatio(contentMode: .fit) // stops image from stretching
                                    .frame(width: 23, height: 23) // fits image within a frame
                            }.foregroundColor(.black).padding(5) // end edit button
                        } // end name and buttons
                        HStack{ //timer section/type
                            Text("Programming").font(.custom("Georgia", size: 15))
                                .background(RoundedRectangle(cornerRadius: 4)
                                    .fill(.orange)
                                    .padding(-3)) // this padding makes sure the background fully encompasses the text
                                .padding([.leading], 30) // this offsets the text from the left edge
                            Spacer() // this keeps it to the left side, rather than centered
                        } // end timer section/type
                        HStack{ //timer time
                            Text("5 hours, 45 minutes").font(.custom("Georgia Bold", size: 18))
                                .padding([.leading], 30) // this offsets the text from the left edge
                            Spacer() // this keeps it to the left side, rather than centered
                        } //.padding([.top], 1)// end timer time
                        HStack{ //timer description
                            Text("Time spend developing my timer application using Swift. The goal is to publish it on the app store. ").font(.custom("Georgia", size: 15))
                                .padding([.leading], 30) // this offsets the text from the left edge
                            Spacer() // this keeps it to the left side, rather than centered
                        } //.padding([.top], 1)// end timer description
                        
                    }.padding(5).background().cornerRadius(10).padding(20) // padding and background for the timer object
                    // end timer object
                    
                    
                    Spacer() // Keeps everything at the top of the page
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
