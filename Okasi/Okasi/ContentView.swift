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
    // SafariViewの表示有無を管理する変数
    @State var isShowSafari = false
    var body: some View {
        // 文字を受け取るTextFieldを表示する
        TextField("キーワード",
                  text: $inputText,
                  prompt: Text("キーワードを入力してください"))
        .onSubmit {
            // 入力完了直後に検索をする
            okashiDataList.searchOkashi(keyword: inputText)
        }
        // キーボードの改行を検索に変更する
        .submitLabel(.search)
        // 上下左右に空白を空ける
        .padding()
        
        // リスト表示する
        List(okashiDataList.okashiList) { okashi in
            // 1つ1つの要素を取り出す
            // ボタンを用意する
            Button {
                okashiDataList.okashiLink = okashi.link
                isShowSafari.toggle()
            } label: {
                // Listの表示内容を生成する
                // 水平にレイアウト（横方向にレイアウト）
                HStack {
                    // 画像を読み込み、表示する
                    AsyncImage(url: okashi.image) { image in
                        // 画像を表示する
                        image
                        // リサイズする
                            .resizable()
                        // アスペクト比（縦横比）を維持してエリア内に収まるようにする
                            .scaledToFit()
                        // 高さ40
                            .frame(height: 40)
                    } placeholder: {
                        // 読み込み中はインジケーターを表示する
                        ProgressView()
                    }
                    // テキスト表示する
                    Text(okashi.name)
                }
            }
        }
        .sheet(isPresented: $isShowSafari, content: {
            // SafariViewを表示する
            SafariView(url: okashiDataList.okashiLink!)
            // 画面下部がセーフエリア外までいっぱいになるように指定
                .ignoresSafeArea(edges: [.bottom])
        })
    }
}

#Preview {
    ContentView()
}
