//
//  SoundPlayer.swift
//  MusicApp
//
//  Created by Tomonori Sampei on 2024/03/11.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源データの読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            //シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            //シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    
    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
}
