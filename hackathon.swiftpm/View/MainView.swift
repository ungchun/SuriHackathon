import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color(hex: 0xF5F5F5)
            VStack(spacing: 0) {
                OnTheInstrumentView()
                InstrumentView()
                NoteView() // 112
                PlayPauseStopRedoView()
                SoundView()
                Spacer()
            }
        }.ignoresSafeArea()
    }
}

struct OnTheInstrumentView: View {
    var body: some View {
        HStack {
            Image("topLeading")
                .offset(x: 40, y: 40)
            Spacer()
            Image("topTrailing")
                .offset(x: -40, y: 40)
        }
        Button {
            
        } label: {
            Image("instruments")
        }
        .offset(y: 70)
        Text("Tap to turn on / off the sounds of each instruments.")
            .font(Font.custom("Kavivanar-Regular", size: 14))
            .offset(y: 102)
    }
}

struct InstrumentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(hex: 0xFFBC6C))
            .frame(width: 802, height: 112)
            .overlay {
                EachInstrumentView()
            }
            .offset(y: 113)
    }
}

struct EachInstrumentView: View {
    var body: some View {
        HStack(spacing: 66) {
            Button {
                
            } label: {
                // bool ? buk : unactive
                Image("buk")
            }
            Button {
                
            } label: {
                Image("kkwaenggawari")
            }
            Button {
                
            } label: {
                Image("janggu")
            }
            Button {
                
            } label: {
                Image("instJing")
            }
        }
    }
}

struct NoteView: View {
    
    let buttonWidth: CGFloat = 75
    let buttonHeight: CGFloat = 40
    let items: [Instrumental] = [.buk, .kkwaenggwari, .janggu, .jing]
    @State var touchIndex = 0
    // 인덱스, 악기
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ForEach(items) { instrumental in
                    HStack(spacing: 0) {
                        ForEach(1..<16) { index in
                            Rectangle()
                                .fill(.white)
                                .frame(width: buttonWidth, height: buttonHeight)
                                .border(.black)
                                .overlay(
                                    VStack {
                                        Text("\(String(describing: instrumental))")
                                        Text("\(index)")
                                    }
                                )
                                .onTapGesture {
                                    print(index)
                                    print(instrumental)
                                }
                        }
                    }
                }
            }
        }
        .offset(y: 134)
    }
}

struct PlayPauseStopRedoView: View {
    var body: some View {
        ZStack {// 129 139
            HStack(spacing: 25) {
                Button {
                    
                } label: {
                    Image("play")
                }
                Button {
                    
                } label: {
                    Image("pause")
                }
                Button {
                    
                } label: {
                    Image("stop")
                }
            }
            .offset(y: 142)
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image("redo")
                }
                .padding(.trailing, 205)
            }
            .offset(y: 142)
        }
    }
}

struct SoundView: View {
    // AllSounds
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<4) { Int in
                    Button {
                        
                    } label: {
                        Image("deo")
                    }
                    .padding(.trailing, 30)
                }
                .offset(x: 97)
                Spacer()
                ForEach(4..<8) { Int in
                    Button {
                        
                    } label: {
                        Image("deo")
                    }
                    .padding(.leading, 30)
                }
                .offset(x: -88)
            }// 43+10+89+48
            HStack {
                ForEach(8..<12) { Int in
                    Button {
                        
                    } label: {
                        Image("deo")
                    }
                    .padding(.trailing, 30)
                }
                .offset(x: 67)
                Spacer()
                ForEach(12..<15) { Int in
                    Button {
                        
                    } label: {
                        Image("deo")
                    }
                    .padding(.leading, 30)
                }
                .offset(x: -156)
            }
            .offset(y: 40)
        }
        .offset(y: 170)
    }
}
