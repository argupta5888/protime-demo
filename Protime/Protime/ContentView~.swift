//
//  ContentView.swift
//  Protime
//
//  Created by Ashok Gupta on 02/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                OnBoardView(imageName: "page-0")
                OnBoardView(imageName: "page-1")
                OnBoardView(imageName: "page-2")
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        }
        .ignoresSafeArea()
    }
}


#Preview {
    ContentView()
}
