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
<<<<<<< HEAD
       Text("abcdefg")
            .font(Font.custom("Kavivanar-Regular.ttf", size: 25))
=======
        VStack {
            HStack {
                TabView {
                    Card()
                    Card()
                }
                .tabViewStyle(PageTabViewStyle())
                TabView {
                    Card()
                    Card()
                }
                .tabViewStyle(PageTabViewStyle())
                TabView {
                    Card()
                    Card()
                }
                .tabViewStyle(PageTabViewStyle())
                TabView {
                    Card()
                    Card()
                }
                .tabViewStyle(PageTabViewStyle())
            }
            .tabViewStyle(PageTabViewStyle())
        }
        .padding()
>>>>>>> 15d40d59b20c9d904a6d59f4fa49eca52c5cfa85
    }
}

struct Card: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(hex: 0xFFBC6C))
            .frame(width: 270, height: 460)
            .overlay {
                Text("It is an instrument with leather attached to both sides of a thin and narrow waist. It is said that the right side is Chae-pyeon, and the left side is the Buk-pyeon. He plays the racket with a thin pole made on the right hand, and with his left hand, he plays the drum with bare hands or gunggeolcha same time, d. This combination of sounds produces the most diverse tones among percussion instruments, so it is most commonly used in percussion accompaniments in Korean music.")
                    .font(Font.custom("Kavivanar-Regular", size: 16))
            }
    }
}

extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(red: Double((hex >> 16) & 0xFF) / 255.0, green: Double((hex >> 8) & 0xFF) / 255.0, blue: Double(hex & 0xFF) / 255.0, opacity: opacity)
    }
}
