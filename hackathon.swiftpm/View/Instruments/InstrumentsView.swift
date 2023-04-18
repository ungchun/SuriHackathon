//
//  Card.swift
//  hackathon
//
//  Created by 예슬 on 2023/04/19.
//

import Foundation
import SwiftUI

struct InstrumentsView: View {
    var body: some View {
        VStack {
            Text("INSTRUMENTS")
                .font(.custom("Kavivanar-Regular", size: 24))
                .underline()
                .padding(43)
            HStack {
                TabView {
                    ImageCard("buk", "SH_bukai")
                    ExplanationCard("An instrument played by covering a wooden barrel with leather and tapping it with a sieve. Usually, the right side is hit with a stick, and the left side is hit with a palm. 'Dung' is a technique of hitting the middle part of the drum while 'du' is a technique of hitting the drum weakly, and 'ttak' is a technique of hitting the rim of the drum.","buk", "SH_whiteBukai")
                }
                .tabViewStyle(.page)
                .frame(width: 270, height: 460)
                TabView {
                    ImageCard("kkwaenggwari", "SH_kkwaenggwariai")
                    ExplanationCard("It is an instrument made thin with brass. A round and flat piece of wood is attached to the end and used as a sieve, and the fingers of the hand holding the kkwaenggwari are placed behind the kkwaenggwari to control the aftertaste of the sound. The kkwaenggwari is held in the right hand and hits the upper part from the center of the sound board, and opens and blocks the sound board with the left hand to change the tone and volume. Blocking the sound board with your left hand is called blocking. Although it is the smallest in Samulnori, the sound is the most prominent. Therefore, he plays the role of a conductor in Samulnori. The technique of hitting the ball with a stick is called 'gaeng,' the technique of hitting the ball weakly is called 'gae,' and the technique of hitting the ball weakly without a block is called 'ji.' It is the same as 'gaeng,' but the oral sound when combined with 'ji' is called 'gaen-ji.' 'gaen-ji' has a length of 'gaen' longer than 'ji'. The technique of blocking and hitting the sound board and attaching the racket to the kkwaenggwari to prevent the sound from ringing is called 'gaet.' To hit 'ji' and 'gaeng' together in one beat is called 'jigaeng.'","kkwaenggwari", "SH_WhiteKkwaenggwaricircle")
                }
                .tabViewStyle(.page)
                .frame(width: 270, height: 460)
                TabView {
                    ImageCard("janggu", "SH_jangguai")
                    ExplanationCard("It is an instrument with leather attached to both sides of a thin and narrow waist. It is said that the right side is Chae-pyeon, and the left side is the Buk-pyeon. He plays the racket with a thin pole made on the right hand, and with his left hand, he plays the drum with bare hands or gunggeolchae. It is called 'Deong' to hit both sides at the same time, 'Kung' to hit only the drum with a gungle, 'Deok' to hit the racket with the right hand, 'Gideok' to hit the racket, and 'Deoreoreoreo' to roll the racket. Gungpyeon is difficult to control the tone except for the strength and weakness of the sound, but Chaepyeon plays by adjusting the tone in several ways depending on how it is played. This combination of sounds produces the most diverse tones among percussion instruments, so it is most commonly used in percussion accompaniments in Korean music.","janggu",  "SH_WhiteJanggucircle")
                }
                .tabViewStyle(.page)
                .frame(width: 270, height: 460)
                TabView {
                    ImageCard("jing", "SH_jingai")
                    ExplanationCard("A round metal percussion instrument made of iron.  The jing hangs on a wooden hanger, sits down, holds the jingchae in his right hand, and hits it. Jingchae has a soft tone because the cloth is wrapped at the end of the sieve. It has a rich echo, and it has a correct pitch. As the jing hits the round beat, the entire beat is caught, and the performers sometimes match their feet to the sound of the jing.","jing", "SH_WhiteJingcircle")
                }
                .tabViewStyle(.page)
                .frame(width: 270, height: 460)
            }
            .tabViewStyle(PageTabViewStyle())
        }
        .padding()
        .onAppear {
            setupAppearance()
        }
    }
}

struct ImageCard: View {
    
    var text = ""
    var imageText = ""
    
    init(_ textValue: String, _ imageValue: String) {
        text = textValue
        imageText = imageValue
    }
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(hex: 0xFFBC6C))
            .frame(width: 270, height: 460)
            .overlay {
                VStack {
                    Text(text)
                        .frame(height: 18)
                        .font(.custom("Kavivanar-Regular", size: 20))
                        .padding()
                        .background(Color(hex: 0xFFEEDF))
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(.black, lineWidth: 2)
                        )
                        .cornerRadius(25)
                        .padding(.top, 50)
                    Spacer()
                    Image(imageText)
                        .resizable()
                        .padding(.bottom, 50)
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 2)
            )
            .cornerRadius(10)
    }
}


struct ExplanationCard: View {
    
    var text = ""
    var buttonText = ""
    var imageText = ""
    
    init(_ textValue: String, _ buttonTextValue: String, _ imageValue: String) {
        text = textValue
        buttonText = buttonTextValue
        imageText = imageValue
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(hex: 0xFFBC6C))
            .frame(width: 270, height: 460)
            .overlay {
                VStack {
                    ScrollView {
                        VStack {
                            Text(buttonText)
                                .frame(height: 18)
                                .font(.custom("Kavivanar-Regular", size: 20))
                                .padding()
                                .background(Color(hex: 0xFFEEDF))
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(.black, lineWidth: 2)
                                )
                                .cornerRadius(25)
                                .padding(.top, 30)
                            Text(text)
                                .font(Font.custom("Kavivanar-Regular", size: 16))
                                .padding(20)
                            Image(imageText)
                                .resizable()
                                .frame(width: 225, height: 237)
                        }
                    }
                    Rectangle()
                        .fill(Color(hex: 0xFFBC6C))
                        .frame(height: 40)
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 2)
            )
            .cornerRadius(10)
    }
}

func setupAppearance() {
    UIPageControl.appearance().currentPageIndicatorTintColor = .black
    UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
}

extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(red: Double((hex >> 16) & 0xFF) / 255.0, green: Double((hex >> 8) & 0xFF) / 255.0, blue: Double(hex & 0xFF) / 255.0, opacity: opacity)
    }
}
