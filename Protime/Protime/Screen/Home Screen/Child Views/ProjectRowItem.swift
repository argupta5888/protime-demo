//
//  ProjectListItem.swift
//  Protime
//
//  Created by Ashok Gupta on 26/08/24.
//

import SwiftUI

struct ProjectRowItem: View {
    var jobTitle: String
    var totalAmount: String
    var ratePerHour: String
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: SystemImage.kChevronRightCircle).foregroundColor(.white).bold()
                VStack (alignment:.leading){
                    Text(jobTitle).font(.title3).foregroundColor(.white).fontWeight(.semibold)
                    
                    Text("4h - 2timestamps - Figma").font(.subheadline).foregroundColor(.white)
                }
                Spacer()
                VStack (alignment: .leading){
                    Text(totalAmount).font(.title3).foregroundColor(.white).fontWeight(.semibold).font(.title3).foregroundColor(.white).fontWeight(.semibold)
                    Text("$"+ratePerHour+"/h").font(.subheadline).foregroundColor(.white)
                }
                
            }
            //.padding()
        }
        .background(Color(ColorConstant.kRowItemBG))
    }
}

#Preview {
    ProjectRowItem(jobTitle: "UI Design", totalAmount: "$120", ratePerHour: "30")
}
