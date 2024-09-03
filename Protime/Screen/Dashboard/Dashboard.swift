//
//  LandingTabView.swift
//  Protime
//
//  Created by Ashok Gupta on 26/08/24.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem { Label("", systemImage: SystemImage.kHouse)}
                FolderView()
                    .tabItem { Label("", systemImage: SystemImage.kFolder)
                        }
                ChartView()
                    .tabItem { Label("", systemImage: SystemImage.kChartBar) }
                ScheduleView()
                    .tabItem { Label("", systemImage: SystemImage.kClock) }
            }
            .tint(Color.white)
            .onAppear(perform: {
                UITabBar.appearance().unselectedItemTintColor = .systemGray
            })
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    Dashboard()
}
