//
//  ListHeader.swift
//  Protime
//
//  Created by Ashok Gupta on 26/08/24.
//

import SwiftUI

struct ListHeader: View {
    var title: String
    var hours: String
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: SystemImage.kSquareFill).foregroundColor(.purple)
                Text(title).font(.title3).foregroundColor(.white).fontWeight(.semibold)
                Text("- " + hours + "h").font(.subheadline).foregroundColor(.white)
                Spacer()
                Label {
                   Text("Active")
                } icon: {}
                    .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                    .background(Color.green)
                    .cornerRadius(20)
            }
            //.padding()
        }
        .background(Color(ColorConstant.kListHeaderBG))
    }
}

#Preview {
    ListHeader(title: "COS website", hours: "241")
}
