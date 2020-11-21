//
//  LandmarkList.swift
//  LandmarksTwo
//
//  Created by Алим Куприянов on 18.11.2020.
//  Copyright © 2020 Алим Куприянов. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false
    
    var body: some View {
           NavigationView {
               List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
        
                   ForEach(landmarkData) { landmark in
                       if !self.showFavoritesOnly || landmark.isFavorite {
                           NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                               LandmarkRow(landmark: landmark)
                           }
                       }
                   }
               }
               .navigationBarTitle(Text("Landmarks"))
           }
       }
   }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone SE", "iPhone 11"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
