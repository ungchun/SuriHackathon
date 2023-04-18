//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/04/19.
//

import Combine
import AVFoundation
import SwiftUI

class MainViewModel: ObservableObject {
    
    var bag = Set<AnyCancellable>()
    
    // MARK: - Input
    @Published var tapSound: Sound = Sound.Empty
    @Published var tapPause: Bool = false
    
    // MARK: - Output
    
    // MARK: - Both
    @Published var allSounds: [Sound] = Sound.All
    @Published var currentSection: MusicSheetSection = MusicSheetSection.Empty
    @Published var musicSheet: MusicSheet = .Empty
    
    @Published var tapSectionNInstrumental: (sectionIndex: Int, instrumental: Instrumental) = (0, .none)
    @Published var tapPlay: Bool = false
    @Published var sectionIndex: Int = 0
    
    // Instrument Activate
    @Published var isBukActivate: Void = ()
    @Published var isKkwaenggwariActivate: Void = ()
    @Published var isJangguActivate: Void = ()
    @Published var isJingActivate: Void = ()
    
    // MARK: - Only use in viewmodel
    @Published var playIndex: Int = 0
    private var timer: AnyCancellable?
    var audio = AVAudioEngine()
    
    init() {
        $tapPlay
            .dropFirst()
            .eraseToAnyPublisher()
            .sink { [weak self] _ in
               
                
            }
            .store(in: &bag)
        
        $playIndex
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] index in
                guard let self = self else { return }
                print(index)
                
                self.currentSection = self.musicSheet.musicSheetSection[index]
                self.currentSection.playTheSection(audioEngine3: self.audio)
            }
            .store(in: &bag)
        
        timer = Timer.publish(every: 2, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }
                print("go")
                if self.tapPlay {
                    self.playIndex += 1
                }
                else if self.tapPause {
                    self.timer?.cancel()
                }
                else {
                    self.timer?.cancel()
                    self.timer = nil
                }
            }
       
        
        $tapSectionNInstrumental
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] (index, inst) in
                guard let self = self else { return }
                
                switch inst {
                case .none:
                    break
                case .buk:
                    self.musicSheet.musicSheetSection[index].buk.makeEmpty()
                    break
                case .janggu:
                    self.musicSheet.musicSheetSection[index].janggu.makeEmpty()
                    break
                case .kkwaenggwari:
                    self.musicSheet.musicSheetSection[index].kkwaenggwari.makeEmpty()
                    break
                case .jing:
                    self.musicSheet.musicSheetSection[index].jing.makeEmpty()
                    break
                }
                
                self.sectionIndex = index
                self.currentSection = self.musicSheet.musicSheetSection[index]
            }
            .store(in: &bag)
        
        $tapSound
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] sound in
                guard let self = self else { return }
                
                switch sound.instrumental {
                case .none:
                    break
                case .buk:
                    self.currentSection.buk = sound
                case .janggu:
                    self.currentSection.janggu = sound
                case .kkwaenggwari:
                    self.currentSection.kkwaenggwari = sound
                case .jing:
                    self.currentSection.jing = sound
                }
                self.musicSheet.musicSheetSection[self.sectionIndex] = self.currentSection
            }
            .store(in: &bag)
        
        
        $isBukActivate
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] _ in
                guard let self = self else { return }
                
                for index in 0 ..< self.allSounds.count {
                    if self.allSounds[index].instrumental == .buk {
                        self.allSounds[index].isActivate.toggle()
                    }
                }
            }
            .store(in: &bag)
        
        $isKkwaenggwariActivate
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] _ in
                guard let self = self else { return }
                
                for index in 0 ..< self.allSounds.count {
                    if self.allSounds[index].instrumental == .kkwaenggwari {
                        self.allSounds[index].isActivate.toggle()
                    }
                }
            }
            .store(in: &bag)
        
        $isJangguActivate
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] _ in
                guard let self = self else { return }
                
                for index in 0 ..< self.allSounds.count {
                    if self.allSounds[index].instrumental == .janggu {
                        self.allSounds[index].isActivate.toggle()
                    }
                }
            }
            .store(in: &bag)
        
        $isJingActivate
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] _ in
                guard let self = self else { return }
                
                for index in 0 ..< self.allSounds.count {
                    if self.allSounds[index].instrumental == .jing {
                        self.allSounds[index].isActivate.toggle()
                    }
                }
            }
            .store(in: &bag)
        
        
    }
}
