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
            MapView(searchKey: displaySearchKey)
        }
    }
}

#Preview {
    ContentView()
}
