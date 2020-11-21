//
//  UserData.swift
//  LandmarksTwo
//
//  Created by Алим Куприянов on 21.11.2020.
//  Copyright © 2020 Алим Куприянов. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
    
}
