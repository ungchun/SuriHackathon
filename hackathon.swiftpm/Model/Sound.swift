//
//  Instrumentals.swift
//  Deong
//
//  Created by 예슬 on 2023/04/10.
//
import Foundation

struct Sound {
    
    static var EmptySound: Sound = Sound(instrumental: .none, name: "")
    
    var instrumental: Instrumental
    var name: String
    //var mp3:
    
    func play() {
        print(name)
    }
}


enum Instrumental {
    
    case none
    case buk
    case janggu
    case kkwaenggwari
    case jing
    
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

struct MusicSheetSection {
    
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
    
    var musicSheetSection: [MusicSheetSection] // 16개
    
    func playTheMusic() {
        for time in 0 ..< musicSheetSection.count {
            let x: Int32 = Int32(time)
            let when = DispatchTime.now() + DispatchTimeInterval.nanoseconds(1 * Int(x))
            DispatchQueue.global().asyncAfter(deadline: when) {
                self.musicSheetSection[time].playTheSection()
            }
        }
    }
}
//
//var sound: [Sound] {
//    switch self {
//    case .none:
//        return []
//    case .buk:
//        return [Sound(instrumental: , name: "dung"), Sound(instrumental: .buk, instrumental: .buk, name: "du"), Sound(instrumental: .buk, name: "ttak")]
//    case .janggu:
//        return [Sound(name: "deong"), Sound(instrumental: .janggu, name: "gideok"), Sound(instrumental: .janggu, instrumental: .janggu, name: "deo"), Sound(name: "kung"), Sound(instrumental: .janggu, instrumental: .janggu, name: "deoreoreoreo"), Sound(instrumental: .janggu, name: "deok")]
//    case .kkwaenggwari:
//        return [Sound(name: "gae"), Sound(name: "gaen"), Sound(name: "gaeng"), Sound(instrumental: .kkwaenggwari, instrumental: .kkwaenggwari, instrumental: .kkwaenggwari, name: "ji"), Sound(instrumental: .kkwaenggwari, instrumental: .kkwaenggwari, name: "gaet"), Sound(instrumental: .kkwaenggwari, name: "jigaeng")]
//    case .jing:
//        return [Sound(instrumental: .jing, name: "jing")]
//    }
//}
