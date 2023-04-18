//
//  Instrumentals.swift
//  Deong
//
//  Created by 예슬 on 2023/04/10.
//
import Foundation
import AVFoundation

struct Sound {
    
    static var Empty = Sound(instrumental: .none, name: "", mp3: "")
    
    var instrumental: Instrumental
    var name: String
    var isActivate: Bool = true
    var mp3: String
    
    mutating func makeEmpty() {
        self = Sound.Empty
    }
    
    func play() {
        if self.mp3 == "" { return }

        print("mp3")
        var audioPlayer: AVAudioPlayer?
        guard let soundURL = Bundle.main.url(forResource: mp3, withExtension: "mp3") else { return }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
}

extension Sound {
    
    static var All: [Sound] = [
        Sound(instrumental: .buk, name: "dung", mp3: "buk2"),
        Sound(instrumental: .buk, name: "du", mp3: "buk1"),
        Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"),
        Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4"),
        Sound(instrumental: .janggu, name: "deo", mp3: "janggu2"),
        Sound(instrumental: .janggu, name: "kung", mp3: "janggu5"),
        Sound(instrumental: .janggu, name: "deoreoreoreo", mp3: "janggu6"),
        Sound(instrumental: .janggu, name: "deok", mp3: "janggu3"),
        Sound(instrumental: .kkwaenggwari, name: "gae", mp3: "kkwaenggwari1"),
        Sound(instrumental: .kkwaenggwari, name: "gaen", mp3: "kkwaenggwari6"),
        Sound(instrumental: .kkwaenggwari,name: "gaeng", mp3: "kkwaenggwari4"),
        Sound(instrumental: .kkwaenggwari, name: "ji", mp3: "kkwaenggwari3"),
        Sound(instrumental: .kkwaenggwari, name: "gaet", mp3: "kkwaenggwari5"),
        Sound(instrumental: .kkwaenggwari, name: "jigaeng", mp3: "kkwaenggwari2"),
        Sound(instrumental: .jing, name: "jing", mp3: "jing1")
    ]
    
}


enum Instrumental: Identifiable {
    case none
    case buk
    case janggu
    case kkwaenggwari
    case jing
    
    mutating func makeNone() {
        self = .none
    }
    

    var id: Int {
        switch self {
        case .none:
            return 0
        case .buk:
            return 1
        case .janggu:
            return 2
        case .kkwaenggwari:
            return 3
        case .jing:
            return 4
        }
    }

}

extension Instrumental {
    
    var name: String {
        switch self {
        case .none:
            return ""
        case .buk:
            return "buk"
        case .janggu:
            return "janggu"
        case .kkwaenggwari:
            return "kkwaenggwari"
        case .jing:
            return "jing"
        }
    }
}

struct MusicSheetSection: Equatable, Identifiable {
    
    static func == (lhs: MusicSheetSection, rhs: MusicSheetSection) -> Bool {
        return lhs.id == rhs.id
    }
    
    
    static var Empty = MusicSheetSection(buk: .Empty, janggu: .Empty, kkwaenggwari: .Empty, jing: .Empty)
    
    var id: Int = 0
    var buk: Sound
    var janggu: Sound
    var kkwaenggwari: Sound
    var jing: Sound
    
    
    func playTheSection() {
        buk.play()
        janggu.play()
        kkwaenggwari.play()
        janggu.play()
    }
}

struct MusicSheet {
    
    static var Empty = MusicSheet()
    
    var musicSheetSection: [MusicSheetSection] // 16개
    
    init(){
        var array = [MusicSheetSection]()
        for index in 0...15 {
            array.append(MusicSheetSection(id: index, buk: Sound.Empty, janggu: Sound.Empty, kkwaenggwari: Sound.Empty, jing: Sound.Empty))
        }
        self.musicSheetSection = array
    }
}
