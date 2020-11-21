//
//  LandmarkList.swift
//  LandmarksTwo
//
//  Created by Алим Куприянов on 18.11.2020.
//  Copyright © 2020 Алим Куприянов. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
           NavigationView {
               List {
                Toggle(isOn: $userData.showFavoritesOnly, label: {
                    Text("Favorites only")
                })
        
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
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
