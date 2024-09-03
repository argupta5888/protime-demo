//
//  DateView.swift
//  Protime
//
//  Created by Ashok Gupta on 12/08/24.
//

import SwiftUI

struct DateView: View {
    var isSelectedDate : Bool
    var body: some View {
        VStack {
            Text("05").foregroundColor(  isSelectedDate ? .black : .white).font(.system(size: 15)).fontWeight(.semibold)
            Text("Mon").foregroundColor( isSelectedDate ? .black : .white).font(.system(size: 12))
        }
        .background(Rectangle().frame(width: 40, height: 70).cornerRadius(20).foregroundColor(isSelectedDate ? .white : Color(ColorConstant.kBGColor)))
    }
}

#Preview {
    DateView(isSelectedDate: false)
}

