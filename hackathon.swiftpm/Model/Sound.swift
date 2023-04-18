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
    
    
    func playTheSection(audioEngine3: AVAudioEngine) {
        
        let soundFileNames = [buk.mp3, kkwaenggwari.mp3, jing.mp3, janggu.mp3]
        GSAudio.sharedInstance.playSounds(soundFileNames: soundFileNames, withDelay: 1.0)
//        print(buk.mp3)
//        print(kkwaenggwari.mp3)
//        print(janggu.mp3)
//        print(jing.mp3)
//
//        let player1 = AVAudioPlayerNode()
//        let player2 = AVAudioPlayerNode()
//        let player3 = AVAudioPlayerNode()
//        let player4 = AVAudioPlayerNode()
//
//        var a: AVAudioFile?
//        var b: AVAudioFile?
//        var c: AVAudioFile?
//        var d: AVAudioFile?
//
//        var audioEngine = AVAudioEngine()
//
//
//        let url2 = Bundle.main.url(forResource: kkwaenggwari.mp3, withExtension: "mp3")!
//
//        let url3 = Bundle.main.url(forResource: janggu.mp3, withExtension: "mp3")!
//
//        let url4 = Bundle.main.url(forResource: jing.mp3, withExtension: "mp3")!
//
//        let url1 = Bundle.main.url(forResource: buk.mp3, withExtension: "mp3")!
//        do {
//            a = try AVAudioFile(forReading: url1)
//            b = try AVAudioFile(forReading: url2)
//            c = try AVAudioFile(forReading: url3)
//            d = try AVAudioFile(forReading: url4)
//
//        } catch let error {
//            print(error)
//            return
//        }
//
////        audioEngine.attach(player1)
////        audioEngine.attach(player2)
////        audioEngine.attach(player3)
////        audioEngine.attach(player4)
//
//        let mixer = audioEngine.mainMixerNode
//        audioEngine.attach(mixer)
//
//
//
//        let aoutput = audioEngine.outputNode
//        let boutput = audioEngine.outputNode
//        let coutput = audioEngine.outputNode
//        let doutput = audioEngine.outputNode
//
//        let af = aoutput.inputFormat(forBus: 0)
//        let bf = aoutput.inputFormat(forBus: 1)
//        let cf = aoutput.inputFormat(forBus: 2)
//        let df = aoutput.inputFormat(forBus: 3)
//
//        audioEngine.connect(mixer, to: aoutput, format: nil)
//        audioEngine.connect(mixer, to: boutput, format: nil)
//        audioEngine.connect(mixer, to: coutput, format: nil)
//        audioEngine.connect(mixer, to: doutput, format: nil)
//
//        audioEngine.connect(player1, to: mixer, format: af)//a!.processingFormat)
//        audioEngine.connect(player2, to: mixer, format: bf)//b!.processingFormat)
//        audioEngine.connect(player3, to: mixer, format: cf)//c!.processingFormat)
//        audioEngine.connect(player4, to: mixer, format: df)//d!.processingFormat)
//
//        player1.scheduleFile(a!, at: nil, completionHandler: nil)
//        player2.scheduleFile(b!, at: nil, completionHandler: nil)
//        player3.scheduleFile(c!, at: nil, completionHandler: nil)
//        player4.scheduleFile(d!, at: nil, completionHandler: nil)
//
//        do {
//            try audioEngine.start()
//        } catch { print() }
//
//
//        player1.play()
//        player2.play()
//        player3.play()
//        player4.play()

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
    
    init(musicSheetSection: [MusicSheetSection]) {
        self.musicSheetSection = musicSheetSection
    }
}
