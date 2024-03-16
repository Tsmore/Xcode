//
//  ContentView.swift
//  Timer
//
//  Created by Tomonori Sampei on 2024/03/15.
//

import SwiftUI

struct ContentView: View {
    //タイマーの変数を作成
    @State var timerHandler: Timer?
    //カウント（経過時間）の変数を作成
    @State var count = 0
    //永続化する秒数設定（初期値は10）
    @AppStorage("timer_value") var timerValue = 10
    //アラート表示有無
    @State var showAlert = false
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.backgroundTimer)
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                VStack(spacing: 30.0) {
                    Text("残り\(timerValue - count)秒")
                        .font(.largeTitle)
                    HStack {
                        //スタートボタン
                        Button {
                            //タイマーを開始する関数を呼び出す
                            startTimer()
                        } label: {
                            Text("スタート")
                                //文字サイズを指定
                                .font(.title)
                                //文字色を白に指定
                                .foregroundStyle(Color.white)
                                //幅と高さを140に指定
                                .frame(width: 140, height: 140)
                                //背景を設定
                                .background(Color.start)
                                //円形切り抜く
                                .clipShape(Circle())
                        }
                        //ストップボタン
                        Button {
                            //timerHandlerをアンラップ
                            if let timerHandler {
                                //もしタイマーが実行中だったら停止
                                if timerHandler.isValid == true {
                                    //タイマーを停止
                                    timerHandler.invalidate()
                                }
                            }
                        } label: {
                            Text("ストップ")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color.stop)
                                .clipShape(Circle())
                        }
                    }
                }
            }
            //画面が表示されるときに実行される
            .onAppear {
                //カウントの変数を初期化
                count = 0
            }
            //ナビゲーションにボタンを追加
            .toolbar {
                //ナビゲーションバーの右にボタンを追加
                ToolbarItem(placement: .topBarTrailing) {
                    //ナビゲーション遷移
                    NavigationLink {
                        SettingView()
                    } label: {
                        Text("秒数設定")
                    }
                }
            }
            //状態変数showAlertがtreuになったら実行される
            .alert("終了", isPresented: $showAlert) {
                Button("OK") {
                    print("OKがタップされました")
                }
            } message: {
                Text("タイマー終了時間です")
            }
        }
    }
    //1秒毎に実行されてカウントダウンする
    func countDownTimer() {
        count += 1
        //残り時間が0以下の時、タイマーを止める
        if timerValue - count <= 0 {
            //タイマー停止
            timerHandler?.invalidate()
            //アラートを表示する
            showAlert = true
        }
    }
    //タイマーを開始する関数
    func startTimer() {
        //timerHandlerをアンラップ
        if let timerHandler {
            //もしタイマーが実行中ならスタートしない
            if timerHandler.isValid == true {
                //何も処理しない
                return
            }
        }
        //残り時間が0以下の時、countを0に初期化する
        if timerValue - count <= 0 {
            //countを0に初期化する
            count = 0
        }
        //タイマーをスタートする
        timerHandler = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            //関数の実行
            countDownTimer()
        }
    }
}

#Preview {
    ContentView()
}
