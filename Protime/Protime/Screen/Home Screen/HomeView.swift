//
//  HomeView.swift
//  Protime
//
//  Created by Ashok Gupta on 05/08/24.
//

import SwiftUI

struct HomeView: View {
    @State var viewModel = ViewModel()
    var body: some View {
        NavigationStack {
            VStack(){
                HStack {
                    Image("user")
                        
                        .frame(width: 40, height: 40)
                    VStack(alignment: .leading) {
                        Text("Etta Hilliard")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.subheadline)
                        Text("UX/UI Designer")
                            .foregroundColor(.white)
                            .font(.caption)
                    }
                    Spacer()
                    HStack(spacing: 10){
                        Image(systemName: SystemImage.kMagnifyingGlass).colorInvert()
                        Image(systemName: SystemImage.kBellBadge).colorInvert()
                    }.padding()
                }
                HStack {
                    Text("October 2022").fontWeight(.semibold)
                        .font(.callout)
                        .foregroundColor(.white)
                        .padding(.leading)
                    Spacer()
                }
                
                HStack(alignment: .center, spacing: 40) {
                    ForEach((0...4), id: \.self) {index in
                        DateView(isSelectedDate: index == 2 ? true : false)
                    }
                    
                }.padding()
                HStack {
                    HomeContentView()
                }
                
                
               // .frame(maxWidth: .infinity)
               // .ignoresSafeArea()
            }
            .background(Color(ColorConstant.kBGColor))
            
        //.padding(EdgeInsets(top: 0, leading: 10, 	bottom: 0, trailing: 10))
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView()
}
