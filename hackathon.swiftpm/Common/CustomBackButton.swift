//
//  File.swift
//  
//
//  Created by Kim SungHun on 2023/04/19.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            self.dismiss()
        } label: {
            Text("Go Back")
                .foregroundColor(.black)
                .font(.custom("Kavivanar-Regular", size: 24))
                .underline()
        }
    }
}
