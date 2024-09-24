//
//  RecipeView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 28/08/2024.
//

import SwiftUI

struct RecipeView: View {
    
    
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Image(systemName: "opticaldiscdrive.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
            }
            .border(Color.black)
            HStack {
                Text("Czas przygotowania:")
                    .font(.title3)
            }
            .padding()
            VStack {
                HStack {
                    Text("Składniki:")
                        .font(.title3)
                }
                .padding()
            }
            VStack {
                Text("Sposób przygotowania")
                    .font(.title3)
                
            }
        }
        Spacer()
    }
}

#Preview {
    RecipeView()
}
