//
//  ContentView.swift
//  Landmarks
//
//  Created by Алим Куприянов on 16.11.2020.
//  Copyright © 2020 Алим Куприянов. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            CircleImage()
            
            VStack(alignment: .leading) {
                
                Text("Hello, SwiftUI!")
                    .font(.title)
                
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
                
            .padding()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
