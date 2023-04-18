//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/04/19.
//

import SwiftUI

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
            }
    }
}

