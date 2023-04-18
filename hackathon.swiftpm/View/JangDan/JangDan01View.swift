//
//  SwiftUIView.swift
//  
//
//  Created by Kim SungHun on 2023/04/19.
//

import SwiftUI

struct JangDan01View: View {
    var body: some View {
        Image("SH_jangdan1")
            .resizable()
            .frame(width: 948, height: 460)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    CustomBackButton()
                }
            }
    }
}
