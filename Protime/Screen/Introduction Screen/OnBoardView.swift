//
//  OnBoardView.swift
//  Protime
//
//  Created by Ashok Gupta on 05/08/24.
//

import SwiftUI

struct OnBoardView: View {
    let imageName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    OnBoardView(imageName: ImageConstant.kPage0)
}
