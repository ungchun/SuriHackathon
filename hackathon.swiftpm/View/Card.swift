//
//  Card.swift
//  hackathon
//
//  Created by 예슬 on 2023/04/19.
//

import Foundation
import SwiftUI

struct CardView: View {
    var body: some View {
       Text("abcdefg")
            .font(Font.custom("Kavivanar-Regular.ttf", size: 25))
    }
}

struct Card: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(hex: 0xFFBC6C))
            .frame(width: 270, height: 460)
    }
}

extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(red: Double((hex >> 16) & 0xFF) / 255.0, green: Double((hex >> 8) & 0xFF) / 255.0, blue: Double(hex & 0xFF) / 255.0, opacity: opacity)
    }
}
