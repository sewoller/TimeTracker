//
//  header.swift
//  TimeTracker
//
//  Created by Serena W on 4/4/24.
//

import Foundation
import SwiftUI

struct HeaderView: View{
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey
    let bgColor: Color
    
    var body = some View{
        Text("CraftTimer")
    }
}

struct HeaderView_Previews: PreviewProvider{
    static var previews: some View{
        HeaderView(title: "Title", subtitle: "Subtitle", bgColor: Color(.blue))
    }
}
