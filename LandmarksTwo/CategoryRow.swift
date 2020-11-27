//
//  CategoryRow.swift
//  LandmarksTwo
//
//  Created by Алим Куприянов on 27.11.2020.
//  Copyright © 2020 Алим Куприянов. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            ForEach(self.items) { landmark in
                Text(landmark.name)
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(3))
        )
    }
}