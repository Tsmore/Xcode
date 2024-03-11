//
//  ContentView.swift
//  MusicApp
//
//  Created by Tomonori Sampei on 2024/03/11.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack {
            //背景画像
            Image(.background)
                //リサイズ
                .resizable()
                //セーフエリア外まで表示
                .ignoresSafeArea()
                //アスペクト比を維持
                .scaledToFill()
            HStack {
                //シンバル
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image(.cymbal)
                }
                //ギター
                Button {
                    soundPlayer.guitarPlay()
                } label: {
                    Image(.guitar)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
