//
//  ScheduleView.swift
//  Protime
//
//  Created by Ashok Gupta on 26/08/24.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        ZStack {
            Color(ColorConstant.kBGColor)
            Text("Schedule TabView").foregroundColor(.white)
        }
        .ignoresSafeArea()
    }
        
}

#Preview {
    ScheduleView()
}
