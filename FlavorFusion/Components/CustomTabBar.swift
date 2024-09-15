//
//  CustomTabBar.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 15/09/2024.
//

import SwiftUI


struct CustomTabBar: View {
    var body: some View {
        HStack(spacing: 10) {
            VStack {
                Button {
                    // home
                } label: {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.black)
                }
            }
            
            Button {
                // add recipe
            } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.green)
                        .padding(.bottom, 50)
            }
            
            Button {
                // settings
            } label: {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.black)
            }
        }
        .frame(width: 200, height: 110, alignment: .bottom)
        .background(Color.clear)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .shadow(color: .gray, radius: 3)
    }
}

#Preview {
    CustomTabBar()
}
