//
//  FolderView.swift
//  Protime
//
//  Created by Ashok Gupta on 26/08/24.
//

import SwiftUI

struct FolderView: View {
    var body: some View {
        ZStack {
            Color(ColorConstant.kBGColor)
            Text("Folder TabView").foregroundColor(.white)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    FolderView()
}
