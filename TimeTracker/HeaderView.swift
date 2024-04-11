//
//  HeaderView.swift
//  TimeTracker
//
//  Created by Serena W on 4/11/24.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey
    var bgColor: Color
    
    var body: some View{
        GeometryReader{ geometry in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.red, bgColor, bgColor, Color.white]),
                               startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
                RoundedRectangle(cornerRadius: 10)
                                .fill(lightPink)
                                .frame(width: geometry.size.width, height: geometry.size.height * 0.18)
                                .position(x: geometry.size.width/2, y: 0)
                VStack(spacing:2){
                    Text("TimeTracker")
                        .font(.custom("Georgia Bold", size: 30))
                    //.padding(.bottom, 200)
                    HStack{
                        Button(action: {}){
                            Image(systemName: "house") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                        Button(action: {}){
                            Image(systemName: "list.bullet") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                        Button(action: {}){
                            Image(systemName: "clock") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                        Button(action: {}){
                            Image(systemName: "questionmark.app") .padding(5)
                        }.foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                    }
                    Spacer()
                }
            }
//            ZStack{
//                Ellipse()
//                    .fill(self.bgColor)
//                    .frame(width: geometry.size.width * 1.4, height: geometry.size.height * 0.33)
//                    .position(x: geometry.size.width / 2.35, y: geometry.size.height * 0.1)
//                    .shadow(radius: 3)
//                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                
//                Text("Hello World!")
//            }
        }
    }
}

//struct HeaderView_Previews: PreviewProvider{
//    static var previews: some View{
//        HeaderView(title: "Groups", subtitle: "Whooce", bgColor: .blue)
//    }
//}
