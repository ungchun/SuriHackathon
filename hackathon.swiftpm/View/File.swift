//
//  File.swift
//
//
//  Created by changgyo seo on 2023/04/19.
//

import SwiftUI
import AVFoundation

struct temp: View {
    
    @ObservedObject var viewmodel: MainViewModel = MainViewModel()
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 500, height: 500)
            .onTapGesture {
    
                viewmodel.musicSheet = MusicSheet(musicSheetSection: [
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .none, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "jing1"), janggu: Sound(instrumental: .buk, name: "du", mp3: "janggu1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu2"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "buk1")),
                ])
//                Sound(instrumental: .jing, name: "", isActivate: false, mp3: "buk1")
//                    .playTheSound()
                
                viewmodel.tapPlay = true
            }
    }
}

final class AudioPlayer {
    
    static let shared = AudioPlayer()
    
    private var player: AVAudioPlayer?
    
    private init() {
        
    }
    
    func play(key: String, fileExtension: String = "mp3") {
        guard let url = Bundle.main.url(forResource: key, withExtension: fileExtension),
              let player = Self.getPlayer(url: url) else {
            return
        }
        self.player = player
        player.play()
    }
    
    func stop() {
        player?.stop()
    }
    
    private static func getPlayer(url: URL) -> AVAudioPlayer? {
        guard let player = try? AVAudioPlayer(contentsOf: url) else {
            return nil
        }
        player.numberOfLoops = 0
        return player
    }
}
