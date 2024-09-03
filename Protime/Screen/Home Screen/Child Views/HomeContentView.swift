//
//  HomeContentView.swift
//  Protime
//
//  Created by Ashok Gupta on 27/08/24.
//

import SwiftUI

struct HomeContentView: View {
    var body: some View {
        VStack {
            CategoriesView()
            List {
                ForEach(0...3, id: \.self ) {index in
                    if index == 0 {
                        ListHeader(title: "COS website", hours: "241")
                    }
                    else {
                        ProjectRowItem(jobTitle: "UI Design", totalAmount: "120", ratePerHour: "30")
                    }
                }
            }.background(Color(.black))
            
        }
        .background(Color(.black))
        .listRowSeparator(.hidden)
        .listStyle(GroupedListStyle())
    }
}

#Preview {
    HomeContentView()
}
