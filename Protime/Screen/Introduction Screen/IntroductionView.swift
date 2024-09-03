//
//  ContentView.swift
//  Protime
//
//  Created by Ashok Gupta on 02/08/24.
//

import SwiftUI

struct IntroductionView: View {
    @State private var selectedTab : Int = 0
    @State private var shouldNavigate: Bool = false
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    var body: some View {
        NavigationStack {
            ZStack {
                Color(ColorConstant.kBGColor)
                VStack {
                    TabView(selection: $selectedTab){
                        OnBoardView(imageName: ImageConstant.kPage0).tag(0)
                        OnBoardView(imageName: ImageConstant.kPage1).tag(1)
                        OnBoardView(imageName: ImageConstant.kPage2).tag(2)
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                }
                .onReceive(timer) {_ in
                    if(selectedTab < 2) {
                        selectedTab = selectedTab + 1
                        print(selectedTab)
                    }
                    else {
                        shouldNavigate = true
                        timer.upstream.connect().cancel()
                        print("Timer cancelled")
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .navigationDestination(isPresented: $shouldNavigate) {
                    //HomeView()
                    Dashboard()
            }
            }
            
        }
    }
}

#Preview {
    IntroductionView()
}
