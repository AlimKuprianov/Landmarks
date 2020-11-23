//
//  HexagonParameters.swift
//  LandmarksTwo
//
//  Created by Алим Куприянов on 23.11.2020.
//  Copyright © 2020 Алим Куприянов. All rights reserved.
//

import SwiftUI

struct HexagonParameters {
    
    struct Segment {
        let useWidth: (CGFloat, CGFloat, CGFloat)
        let xFactors: (CGFloat, CGFloat, CGFloat)
        let useHeight: (CGFloat, CGFloat, CGFloat)
        let yFactors: (CGFloat, CGFloat, CGFloat)
        
        
    }

    static let adjustment: CGFloat = 0.085
       
}

//struct HexagonParameters_Previews: PreviewProvider {
//    static var previews: some View {
//        HexagonParameters()
//    }
//}
