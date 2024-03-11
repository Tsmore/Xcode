//
//  BackgroundModifier.swift
//  MusicApp
//
//  Created by Tomonori Sampei on 2024/03/11.
//

import SwiftUI

extension Image {
    func backgroundModifier() -> some View {
        self
            //リサイズ
            .resizable()
            //セーフエリア外まで表示
            .ignoresSafeArea()
            //アスペクト比を維持
            .scaledToFill()
    }
}
