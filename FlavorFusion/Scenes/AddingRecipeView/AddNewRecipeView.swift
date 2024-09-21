//
//  AddNewRecipeView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 26/08/2024.
//

import SwiftUI

struct AddNewRecipeView: View {
    
    @ObservedObject var vm: AddNewRecipeViewModel
    
    @State private var preparationTime: String = ""
    @State private var principle: String = ""
    @State private var preparation: String = ""
    
    
    var body: some View {
        VStack {
            Button {
                // action
            } label: {
                Image(.dish)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
            }
            HStack {
                Text("Czas przygotowania:")
                    .font(.title3)
                TextField("Czas", text: $preparationTime)
                    .textFieldStyle(OvalTextField())
            }
            .padding()
            VStack {
                HStack {
                    Text("Składniki:")
                        .font(.title3)
                    TextField("Dodaj składnik", text: $principle)
                        .textFieldStyle(OvalTextField())
                }
                .padding()
            }
            VStack {
                Text("Sposób przygotowania")
                    .font(.title3)
                TextField("Podaj sposób przygotowania", text: $preparation)
                    .textFieldStyle(OvalTextField())
            }
        }
        Spacer()
        VStack {
            Button(action: {}, label: {
                Text("Dodaj")
            })
            .buttonStyle(customButton())

        }
    }
}

#Preview {
    AddNewRecipeView()
}


