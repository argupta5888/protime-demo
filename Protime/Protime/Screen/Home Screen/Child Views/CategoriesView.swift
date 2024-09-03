//
//  CategoriesView.swift
//  Protime
//
//  Created by Ashok Gupta on 21/08/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                HStack {
                    Text("Categories").font(.title2).fontWeight(.semibold).foregroundColor(.white)
                    Spacer()
                }.padding()
                HStack {
                    Image(systemName: SystemImage.kSquareStack3dUp).foregroundColor(.purple)
                    VStack {
                        HStack {
                            Text("Design").foregroundColor(.white)
                            Spacer()
                            Text("74% spent").foregroundColor(.gray)
                        }
                        ProgressView(value: 74, total: 100)
                            .font(.title2)
                            .tint(Color.purple)
                    }
                } 
                //.padding()
                HStack() {
                    Image(systemName: SystemImage.kMessageCircle).foregroundColor(.green)
                    VStack {
                        HStack {
                            Text("Communication").foregroundColor(.white)
                            Spacer()
                            Text("52% spent").foregroundColor(.gray)
                        }
                        ProgressView(value: 52, total: 100)
                            .font(.title2)
                            .tint(Color.green)
                    }
                }
                //.padding()
            }
        }
        //.ignoresSafeArea()
    }
}

#Preview {
    CategoriesView()
}
