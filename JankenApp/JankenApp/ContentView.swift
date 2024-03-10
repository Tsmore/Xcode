//
//  ContentView.swift
//  JankenApp
//
//  Created by Tomonori Sampei on 2024/03/10.
//

import SwiftUI

struct ContentView: View {
    @State var jankenNumber = 0
    var body: some View {
        // 垂直にレイアウト
        VStack {
            // スペースを追加
            Spacer()
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                //グー画像を指定
                Image(.gu)
                    //リサイズ
                    .resizable()
                    //画面に収まるようにアスペクト比を維持
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if jankenNumber == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            Button(action: {
                //新しいじゃんけんの結果を一時的に格納する変数を設る
                var newJankenNumber = 0
                //ランダムに結果を出すが、前回の結果と異なる場合の用
                // repeatは繰り返しを意味する
                repeat {
                    // 1,2,3の数値をランダムに算出（乱数）
                    newJankenNumber = Int.random(in: 1...3)
                    //前回と同じ結果のときは、再度ランダムに数値を出す
                    // 異なる結果のときは、repeatを抜ける
                } while jankenNumber == newJankenNumber
                // 新しいじゃんけんの結果を格納
                jankenNumber = newJankenNumber
            }, label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
            })
        }
    }
}

#Preview {
    ContentView()
}
