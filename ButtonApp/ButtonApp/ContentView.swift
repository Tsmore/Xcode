//
//  ContentView.swift
//  ButtonApp
//
//  Created by Tomonori Sampei on 2024/03/09.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello, world!"
    var body: some View {
        
        VStack {
            Text(outputText)
                .font(.largeTitle)
            Button("切り替えボタン") {
                outputText = "Hi, Swift!"
            }
            .padding(.all)
            .background(.blue)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
