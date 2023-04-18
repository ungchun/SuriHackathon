//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/04/19.
//

import SwiftUI

struct kavivanarFont: ViewModifier {
    
    let fontSize: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Kavivanar-Regular", size: fontSize))
    }
    
}
