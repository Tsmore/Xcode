//
//  ContentView.swift
//  MapApp
//
//  Created by Tomonori Sampei on 2024/03/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(searchKey: "羽田空港")
        }
    }
}

#Preview {
    ContentView()
}
