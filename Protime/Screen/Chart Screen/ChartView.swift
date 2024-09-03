//
//  ChartView.swift
//  Protime
//
//  Created by Ashok Gupta on 26/08/24.
//

import SwiftUI

struct ChartView: View {
    var body: some View {
        ZStack {
            Color(ColorConstant.kBGColor)
            Text("Chart TabView").foregroundColor(.white)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ChartView()
}
