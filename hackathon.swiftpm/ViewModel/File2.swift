//
//  File.swift
//
//
//  Created by changgyo seo on 2023/04/19.
//

import Combine
import AVFoundation
import SwiftUI

class MainViewModels: ObservableObject {
    
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
    
    // sunghun
    var soundPlayer: AVAudioPlayer?
    var soundPlayer2: AVAudioPlayer?
    var soundPlayer3: AVAudioPlayer?
    
    // 이렇게 만들 수 있을 듯
    // 시작전에 동적으로 AVAudioPlayer 담겨있는 소리들..? count 만큼 만들어서 세팅?
    var soundPlayer4: AVAudioPlayer?
    var soundPlayer5: AVAudioPlayer?
    var soundPlayer6: AVAudioPlayer?
    var soundPlayer7: AVAudioPlayer?
    
    func prepareSound() {
        // 이렇게 해보니 징소리랑 꽹과리랑 장구 소리가 같이 들림.
        let path = Bundle.main.path(forResource: "jing1.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        let path2 = Bundle.main.path(forResource: "kkwaenggwari4.mp3", ofType: nil)!
        let url2 = URL(fileURLWithPath: path2)
        
        let path3 = Bundle.main.path(forResource: "janggu1.mp3", ofType: nil)!
        let url3 = URL(fileURLWithPath: path3)
        
        // play 전에 미리 메모리에 로드해두고 준비하는 것이라고함.
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.prepareToPlay()
            
            soundPlayer2 = try AVAudioPlayer(contentsOf: url2)
            soundPlayer2?.prepareToPlay()
            
            soundPlayer3 = try AVAudioPlayer(contentsOf: url3)
            soundPlayer3?.prepareToPlay()
            print("ready")
        } catch {
            // error
        }
    }
    
    init() {
        // init에서 미리 세팅
        prepareSound()
        
        $tapPlay
            .dropFirst()
            .eraseToAnyPublisher()
            .sink { [weak self] _ in
                // 실행
                print("start")
                self?.soundPlayer?.play()
                self?.soundPlayer2?.play()
                self?.soundPlayer3?.play()
            }
            .store(in: &bag)
        
        $playIndex
            .eraseToAnyPublisher()
            .dropFirst()
            .sink { [weak self] index in
                guard let self = self else { return }
                print(index)
                
                self.currentSection = self.musicSheet.musicSheetSection[index]
                self.currentSection.playTheSection()
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
