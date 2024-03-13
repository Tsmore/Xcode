//
//  ContentView.swift
//  MapApp
//
//  Created by Tomonori Sampei on 2024/03/12.
//

import SwiftUI

struct ContentView: View {
    //入力中の文字列を保持する状態変数
    @State var inputText: String = ""
    //検索キーワードを保持する状態変数、初期値は"東京駅"
    @State var displaySearchKey: String = "東京駅"
    //マップ種類　最初は標準
    @State var displayMapType: Maptype = .standard
    
    var body: some View {
        VStack {
            //テキストフィールド（文字入力）
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
                //入力が完了した時
                .onSubmit {
                    //入力が完了したから検索キーワードに設定する
                    displaySearchKey = inputText
                }
                .padding()
            ZStack(alignment: .bottomTrailing) {
                //マップ表示
                MapView(searchKey: displaySearchKey, mapType: displayMapType)
                //マップ種類の切り替えボタン
                Button {
                    //標準 → 衛星写真 → 衛星写真＋交通機関ラベル
                    if displayMapType == .standard {
                        displayMapType = .satellite
                    } else if displayMapType == .satellite {
                        displayMapType = .hybrid
                    } else {
                        displayMapType = .standard
                    }
                } label: {
                    //マップアイコンの表示
                    Image(systemName: "map")
                        .resizable()
                        .frame(width: 35.0, height: 35.0)
                }
                //右の余白20
                .padding(.trailing, 20.0)
                //下の余白30
                .padding(.bottom, 30.0)
            }
        }
    }
}

#Preview {
    ContentView()
}
