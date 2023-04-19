//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/04/19.
//

import SwiftUI
import Combine
import AVFoundation

class Players {
    
    static var shared: Players = Players()
    
    var soundPlayerBuk1: AVAudioPlayer?
    var soundPlayerBuk2: AVAudioPlayer?
    
    var soundPlayerJang1: AVAudioPlayer?
    var soundPlayerJang2: AVAudioPlayer?
    var soundPlayerJang3: AVAudioPlayer?
    var soundPlayerJang4: AVAudioPlayer?
    var soundPlayerJang5: AVAudioPlayer?
    var soundPlayerJang6: AVAudioPlayer?
    
    var soundPlayerKkw1: AVAudioPlayer?
    var soundPlayerKkw2: AVAudioPlayer?
    var soundPlayerKkw3: AVAudioPlayer?
    var soundPlayerKkw4: AVAudioPlayer?
    var soundPlayerKkw5: AVAudioPlayer?
    var soundPlayerKkw6: AVAudioPlayer?
    
    var soundPlayerJing1: AVAudioPlayer?
    
    func findPlayer(name: String) -> AVAudioPlayer? {
        if name == "buk1" {
            return soundPlayerBuk1
        }
        else if name == "buk2" {
            return soundPlayerBuk2
        }
        else if name == "janggu1" {
            return soundPlayerJang1
        }
        else if name == "janggu2" {
            return soundPlayerJang2
        }
        else if name == "janggu3" {
            return soundPlayerJang3
        }
        else if name == "janggu4" {
            return soundPlayerJang4
        }
        else if name == "janggu5" {
            return soundPlayerJang5
        }
        else if name == "janggu6" {
            return soundPlayerJang6
        }
        else if name == "kkwaenggwari1" {
            return soundPlayerKkw1
        }
        else if name == "kkwaenggwari2" {
            return soundPlayerKkw2
        }
        else if name == "kkwaenggwari3" {
            return soundPlayerKkw3
        }
        else if name == "kkwaenggwari4" {
            return soundPlayerKkw4
        }
        else if name == "kkwaenggwari5" {
            return soundPlayerKkw5
        }
        else if name == "kkwaenggwari6" {
            return soundPlayerKkw6
        }
        else {
            return soundPlayerJing1
        }
    }
    
    private init() {
        let path1 = Bundle.main.path(forResource: "buk1.mp3", ofType: nil)!
        let url1 = URL(fileURLWithPath: path1)
        
        let path2 = Bundle.main.path(forResource: "buk2.mp3", ofType: nil)!
        let url2 = URL(fileURLWithPath: path2)
        
        let path3 = Bundle.main.path(forResource: "janggu1.mp3", ofType: nil)!
        let url3 = URL(fileURLWithPath: path3)
        
        let path4 = Bundle.main.path(forResource: "janggu2.mp3", ofType: nil)!
        let url4 = URL(fileURLWithPath: path4)
        
        let path5 = Bundle.main.path(forResource: "janggu3.mp3", ofType: nil)!
        let url5 = URL(fileURLWithPath: path5)
        
        let path6 = Bundle.main.path(forResource: "janggu4.mp3", ofType: nil)!
        let url6 = URL(fileURLWithPath: path6)
        
        let path7 = Bundle.main.path(forResource: "janggu5.mp3", ofType: nil)!
        let url7 = URL(fileURLWithPath: path7)
        
        let path8 = Bundle.main.path(forResource: "janggu6.mp3", ofType: nil)!
        let url8 = URL(fileURLWithPath: path8)
        
        let path9 = Bundle.main.path(forResource: "kkwaenggwari1.mp3", ofType: nil)!
        let url9 = URL(fileURLWithPath: path9)
        
        let path10 = Bundle.main.path(forResource: "kkwaenggwari2.mp3", ofType: nil)!
        let url10 = URL(fileURLWithPath: path10)
        
        let path11 = Bundle.main.path(forResource: "kkwaenggwari3.mp3", ofType: nil)!
        let url11 = URL(fileURLWithPath: path11)
        
        let path12 = Bundle.main.path(forResource: "kkwaenggwari4.mp3", ofType: nil)!
        let url12 = URL(fileURLWithPath: path12)
        
        let path13 = Bundle.main.path(forResource: "kkwaenggwari5.mp3", ofType: nil)!
        let url13 = URL(fileURLWithPath: path13)
        
        let path14 = Bundle.main.path(forResource: "kkwaenggwari6.mp3", ofType: nil)!
        let url14 = URL(fileURLWithPath: path14)
        
        let path15 = Bundle.main.path(forResource: "jing1.mp3", ofType: nil)!
        let url15 = URL(fileURLWithPath: path15)
        
        // play 전에 미리 메모리에 로드해두고 준비하는 것이라고함.
        do {
            soundPlayerBuk1 = try AVAudioPlayer(contentsOf: url1)
            soundPlayerBuk2 = try AVAudioPlayer(contentsOf: url2)
            
            soundPlayerJang1 = try AVAudioPlayer(contentsOf: url3)
            soundPlayerJang2 = try AVAudioPlayer(contentsOf: url4)
            soundPlayerJang3 = try AVAudioPlayer(contentsOf: url5)
            soundPlayerJang4 = try AVAudioPlayer(contentsOf: url6)
            soundPlayerJang5 = try AVAudioPlayer(contentsOf: url7)
            soundPlayerJang6 = try AVAudioPlayer(contentsOf: url8)
            
            soundPlayerKkw1 = try AVAudioPlayer(contentsOf: url9)
            soundPlayerKkw2 = try AVAudioPlayer(contentsOf: url10)
            soundPlayerKkw3 = try AVAudioPlayer(contentsOf: url11)
            soundPlayerKkw4 = try AVAudioPlayer(contentsOf: url12)
            soundPlayerKkw5 = try AVAudioPlayer(contentsOf: url13)
            soundPlayerKkw6 = try AVAudioPlayer(contentsOf: url14)
            
            soundPlayerJing1 = try AVAudioPlayer(contentsOf: url15)
            
            soundPlayerBuk1?.prepareToPlay()
            soundPlayerBuk2?.prepareToPlay()
            
            soundPlayerJang1?.prepareToPlay()
            soundPlayerJang2?.prepareToPlay()
            soundPlayerJang3?.prepareToPlay()
            soundPlayerJang4?.prepareToPlay()
            soundPlayerJang5?.prepareToPlay()
            soundPlayerJang6?.prepareToPlay()
            
            soundPlayerKkw1?.prepareToPlay()
            soundPlayerKkw2?.prepareToPlay()
            soundPlayerKkw3?.prepareToPlay()
            soundPlayerKkw4?.prepareToPlay()
            soundPlayerKkw5?.prepareToPlay()
            soundPlayerKkw6?.prepareToPlay()
            
            soundPlayerJing1?.prepareToPlay()
            
            print("Ready")
        } catch {
            print("fail to prepare player")
            // error
        }
    }
    
    
    
}
