//
//  ProjectsView.swift
//  Protime
//
//  Created by Ashok Gupta on 26/08/24.
//

import SwiftUI

struct ProjectsView: View {
    var body: some View {
        ZStack {
            Color(ColorConstant.kBGColor)
            VStack {
                HStack {
                    Text("Projects").font(.title2).fontWeight(.semibold).foregroundColor(.white)
                    Spacer()
                    Image(systemName: SystemImage.kSliderHorizontal3).colorInvert()
                }.padding()
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProjectsView()
}
