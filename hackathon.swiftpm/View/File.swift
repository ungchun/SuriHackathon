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
        Text("play")
            .onTapGesture {
                viewmodel.musicSheet = MusicSheet(musicSheetSection: [
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                    MusicSheetSection(buk: Sound(instrumental: .buk, name: "dung", mp3: "buk2"), janggu: Sound(instrumental: .buk, name: "du", mp3: "buk1"), kkwaenggwari: Sound(instrumental: .janggu, name: "deong", mp3: "janggu1"), jing: Sound(instrumental: .janggu, name: "gideok", mp3: "janggu4")),
                ])

                viewmodel.tapPlay = true
                
                //AudioPlayer.shared.play(key: "jing1")
//                let audioSession = AVAudioSession.sharedInstance()
//                do {
//                    try audioSession.setCategory(AVAudioSession.Category.playback)
//                    try audioSession.setActive(true)
//                } catch let error {
//                    print("Error: \(error.localizedDescription)")
//                }
//
//                var audioPlayer: AVAudioPlayer?
//                guard let soundURL = Bundle.main.url(forResource: "janggu4", withExtension: "mp3") else { return }
//
//                do {
//                    audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
//                    audioPlayer?.play()
//                } catch {
//                    print("Error playing sound: \(error.localizedDescription)")
//                }
               
                viewmodel.tapPlay = true
            }
    }
}

final class AudioPlayer {
    
    static var shaerd = AudioPlayer()
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


class GSAudio: NSObject, AVAudioPlayerDelegate {

    static let sharedInstance = GSAudio()

    private override init() {}

    var players = [NSURL:AVAudioPlayer]()
    var duplicatePlayers = [AVAudioPlayer]()

    func playSound (soundFileName: String){

        let soundFileNameURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: soundFileName, ofType: "aif", inDirectory:"Sounds")!)

        if let player = players[soundFileNameURL] { //player for sound has been found

            if player.isPlaying == false { //player is not in use, so use that one
                player.prepareToPlay()
                player.play()

            } else { // player is in use, create a new, duplicate, player and use that instead

                let duplicatePlayer = try! AVAudioPlayer(contentsOf: soundFileNameURL as URL)
                //use 'try!' because we know the URL worked before.

                duplicatePlayer.delegate = self
                //assign delegate for duplicatePlayer so delegate can remove the duplicate once it's stopped playing

                duplicatePlayers.append(duplicatePlayer)
                //add duplicate to array so it doesn't get removed from memory before finishing

                duplicatePlayer.prepareToPlay()
                duplicatePlayer.play()

            }
        } else { //player has not been found, create a new player with the URL if possible
            do{
                let player = try AVAudioPlayer(contentsOf: soundFileNameURL as URL)
                players[soundFileNameURL] = player
                player.prepareToPlay()
                player.play()
            } catch {
                print("Could not play sound file!")
            }
        }
    }


    func playSounds(soundFileNames: [String]){

        for soundFileName in soundFileNames {
            playSound(soundFileName: soundFileName)
        }
    }

    func playSounds(soundFileNames: String...){
        for soundFileName in soundFileNames {
            playSound(soundFileName: soundFileName)
        }
    }

    func playSounds(soundFileNames: [String], withDelay: Double) { //withDelay is in seconds
        for item in soundFileNames.enumerated() {
            let delay = withDelay*Double(item.offset)
            let _ = Timer.scheduledTimer(timeInterval: delay, target: self, selector: #selector(playSoundNotification(_:)), userInfo: ["fileName":item.element], repeats: false)
        }
    }

    @objc func playSoundNotification(_ notification: NSNotification) {
        if let soundFileName = notification.userInfo?["fileName"] as? String {
            playSound(soundFileName: soundFileName)
         }
     }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
         duplicatePlayers.remove(at: duplicatePlayers.firstIndex(of: player)!)
        //Remove the duplicate player once it is done
    }

}
