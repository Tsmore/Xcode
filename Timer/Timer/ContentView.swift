//
//  ContentView.swift
//  Timer
//
//  Created by Tomonori Sampei on 2024/03/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.backgroundTimer)
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                VStack(spacing: 30.0) {
                    Text("残り10秒")
                        .font(.largeTitle)
                    HStack {
                        Button {
                            
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
                        Button {
                            
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
        }
    }
}

#Preview {
    ContentView()
}
