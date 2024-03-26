//
//  OkashiData.swift
//  Okasi
//
//  Created by Tomonori Sampei on 2024/03/26.
//

import SwiftUI

// お菓子データ検索用クラス
@Observable class OkashiData {
    // Web API検索用メソッド　第一引数：keyword　検索したいワード
    func searchOkashi(keyword: String) {
        // デバッグエリアに出力
        print("searchOkashiメソッドで受け取った値:\(keyword)")
    }
}
