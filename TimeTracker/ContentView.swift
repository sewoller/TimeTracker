//
//  ContentView.swift
//  TimeTracker
//
//  Created by Serena W on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            HeaderView(title: "Groups", subtitle: "Whooce", bgColor: lightPink)
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
}

#Preview {
    ContentView()
}
