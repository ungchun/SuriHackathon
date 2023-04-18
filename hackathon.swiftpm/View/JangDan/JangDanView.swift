//
//  SwiftUIView.swift
//  
//
//  Created by Kim SungHun on 2023/04/19.
//

import SwiftUI

struct JangDanView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("JANG DAN")
                    .font(.custom("Kavivanar-Regular", size: 24))
                    .underline()
                
                Image("SH_jangdan")
                    .resizable()
                    .frame(width: 948, height: 460)
                    .overlay {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                NavigationLink(destination: JangDan01View()) {
                                    Image("SH_semachi")
                                        .padding(.trailing, 98)
                                }
                            }
                            Spacer()
                            HStack {
                                Spacer()
                                NavigationLink(destination: JangDan02View()) {
                                    Image("SH_gutgeori")
                                        .padding(.trailing, 98)
                                }
                            }
                            Spacer()
                            HStack {
                                Spacer()
                                NavigationLink(destination: JangDan03View()) {
                                    Image("SH_byeoldalgeori")
                                        .padding(.trailing, 78)
                                }
                            }
                            Spacer()
                        }
                    }
            }
        }
        .navigationViewStyle(.stack)
    }
}
