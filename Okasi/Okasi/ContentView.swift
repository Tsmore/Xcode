//
//  ContentView.swift
//  Okasi
//
//  Created by Tomonori Sampei on 2024/03/25.
//

import SwiftUI

struct ContentView: View {
    // OkashiDataを参照する変数
    var okashiDataList = OkashiData()
    // 入力された文字列を保持する状態変数
    @State var inputText = ""
    
    var body: some View {
        // 文字を受け取るTextFieldを表示する
        TextField("キーワード",
                  text: $inputText,
                  prompt: Text("キーワードを入力してください"))
        .onSubmit {
            // 入力完了直後に検索をする
            okashiDataList.searchOkashi(keyword: inputText)
        }
    }
}

#Preview {
    ContentView()
}
