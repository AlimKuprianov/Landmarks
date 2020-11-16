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
            MapView()
            .edgesIgnoringSafeArea(.top)
            .frame(height: 300)
            
            
            CircleImage()
            .offset(y: -200)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                Text("Hello, California!")
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
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
