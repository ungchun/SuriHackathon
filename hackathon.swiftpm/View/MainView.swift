import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewmodel: MainViewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: 0xFFFDF2)
                VStack(spacing: 0) {
                    OnTheInstrumentView()
                    InstrumentView(viewmodel: viewmodel)
                    NoteView(viewmodel: viewmodel) // 112
                    PlayPauseStopRedoView(viewmodel: viewmodel)
                    SoundView(viewmodel: viewmodel)
                    Spacer()
                }
            }.ignoresSafeArea()
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct OnTheInstrumentView: View {
    var body: some View {
        HStack {
            Image("topLeading")
                .offset(x: 40, y: 40)
            Spacer()
            NavigationLink {
                JangDanView()
            } label: {
                Image("topTrailing")
            }
            .offset(x: -40, y: 40)
        }
        NavigationLink {
            InstrumentsView()
        } label: {
            Image("instruments")
        }
        Text("Tap to turn on / off the sounds of each instruments.")
            .font(Font.custom("Kavivanar-Regular", size: 14))
            .offset(y: 102)
    }
}

struct InstrumentView: View {
    @ObservedObject var viewmodel: MainViewModel
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(hex: 0xFFBC6C))
            .frame(width: 802, height: 112)
            .overlay {
                EachInstrumentView(viewmodel: viewmodel)
            }
            .offset(y: 113)
    }
}

struct EachInstrumentView: View {
    
    @ObservedObject var viewmodel: MainViewModel
    @State var isActive: [Bool] = [true, true, true, true]
    @State var isBukOn = true
    @State var isKkOn = true
    @State var isjangOn = true
    @State var isJingOn = true
    
    let activeImage = ["buk", "kkwaenggawari", "janggu", "activateJing"]
    let unactiveImage = ["unactiveBuk", "unactiveKkwaenggawari", "unactiveJanggu", "unactiveJing"]
    
    var body: some View {
        HStack(spacing: 66) {
            
            Button {
                viewmodel.isBukActivate = ()
                isBukOn.toggle()
            } label: {
                Image(isBukOn ? activeImage[0] : unactiveImage[0])
            }
            Button {
                viewmodel.isKkwaenggwariActivate = ()
                isKkOn.toggle()
            } label: {
                Image(isKkOn ? activeImage[1] : unactiveImage[1])
            }
            Button {
                viewmodel.isJangguActivate = ()
                isjangOn.toggle()
            } label: {
                Image(isjangOn ? activeImage[2] : unactiveImage[2])
            }
            Button {
                viewmodel.isJingActivate = ()
                isJingOn.toggle()
            } label: {
                Image(isJingOn ? activeImage[3] : unactiveImage[3])
            }
        }
    }
}

struct NoteView: View {
    
    let buttonWidth: CGFloat = 75
    let buttonHeight: CGFloat = 40
    let items: [Instrumental] = [.buk, .kkwaenggwari, .janggu, .jing]
    @ObservedObject var viewmodel: MainViewModel
    @State var touchIndex = 0
    // 인덱스, 악기
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                ForEach(viewmodel.musicSheet.musicSheetSection, id: \.id) { section in
                    if section.id != 0 {
                        VStack(spacing: 0) {
                            Rectangle()
                                .fill(section == viewmodel.currentSection ? .blue : Color(hex: 0xFFFDF2))
                                .frame(width: buttonWidth, height: buttonHeight)
                                .border(.black)
                                .overlay(
                                    VStack {
                                        Text(section.buk.name)
                                    }
                                )
                                .onTapGesture {
                                    viewmodel.tapSectionNInstrumental = (section.id, .buk)
                                }
                            Rectangle()
                                .fill(section == viewmodel.currentSection ? .blue : Color(hex: 0xFFFDF2))
                                .frame(width: buttonWidth, height: buttonHeight)
                                .border(.black)
                                .overlay(
                                    VStack {
                                        Text(section.kkwaenggwari.name)
                                    }
                                )
                                .onTapGesture {
                                    viewmodel.tapSectionNInstrumental = (section.id, .kkwaenggwari)
                                    
                                }
                            Rectangle()
                                .fill(section == viewmodel.currentSection ? .blue : Color(hex: 0xFFFDF2))
                                .frame(width: buttonWidth, height: buttonHeight)
                                .border(.black)
                                .overlay(
                                    VStack {
                                        Text(section.janggu.name)
                                        
                                    }
                                )
                                .onTapGesture {
                                    viewmodel.tapSectionNInstrumental = (section.id, .janggu)
                                }
                            
                            Rectangle()
                                .fill(section == viewmodel.currentSection ? .blue : Color(hex: 0xFFFDF2))
                                .frame(width: buttonWidth, height: buttonHeight)
                                .border(.black)
                                .overlay(
                                    VStack {
                                        Text(section.jing.name)
                                        
                                    }
                                )
                                .onTapGesture {
                                    viewmodel.tapSectionNInstrumental = (section.id, .jing)
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
    
    @ObservedObject var viewmodel: MainViewModel
    
    var body: some View {
        ZStack {// 129 139
            HStack(spacing: 25) {
                Button {
                    viewmodel.tapPlay = true
                } label: {
                    Image("play")
                }
                Button {
                    viewmodel.tapPause = true
                } label: {
                    Image("pause")
                }
                Button {
                    viewmodel.playIndex = 0
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
    
    @ObservedObject var viewmodel: MainViewModel
    // AllSounds
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<4) { index in
                    Button {
                        viewmodel.tapSound = viewmodel.allSounds[index]
                    } label: {
                        Image(viewmodel.allSounds[index].name)
                            .opacity(viewmodel.allSounds[index].isActivate ? 1 : 0.4)
                    }
                    .padding(.trailing, 30)
                }
                .offset(x: 97)
                Spacer()
                ForEach(4..<8) { index in
                    Button {
                        viewmodel.tapSound = viewmodel.allSounds[index]
                    } label: {
                        Image(viewmodel.allSounds[index].name)
                            .opacity(viewmodel.allSounds[index].isActivate ? 1 : 0.4)
                    }
                    .padding(.leading, 30)
                }
                .offset(x: -88)
            }// 43+10+89+48
            HStack {
                ForEach(8..<12) { index in
                    Button {
                        viewmodel.tapSound = viewmodel.allSounds[index]
                    } label: {
                        Image(viewmodel.allSounds[index].name)
                            .opacity(viewmodel.allSounds[index].isActivate ? 1 : 0.4)
                    }
                    .padding(.trailing, 30)
                }
                .offset(x: 67)
                Spacer()
                ForEach(12..<15) { index in
                    Button {
                        viewmodel.tapSound = viewmodel.allSounds[index]
                    } label: {
                        Image(viewmodel.allSounds[index].name)
                            .opacity(viewmodel.allSounds[index].isActivate ? 1 : 0.4)
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
