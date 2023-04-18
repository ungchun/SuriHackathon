import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("GAENG: THE JANGDAN MAKER")
                Spacer()
                Text("WHAT IS JANGDAN?")
            }
            Text("INSTRUMENTS")
            Text("Tap to turn on / off the sounds of each instruments")
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 112)
                .cornerRadius(20)
                .padding(.leading, 200)
                .padding(.trailing, 200)
                .overlay {
                    HStack {
                        Button(action: {
                            print("tap")
                        }) {
                            Text("buk")
                        }
                    }
                }
            
            Spacer()
        }
    }
}
