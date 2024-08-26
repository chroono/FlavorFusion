//
//  AddNewRecipeView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 26/08/2024.
//

import SwiftUI

struct AddNewRecipeView: View {
    
    @State private var preparationTime: String = ""
    @State private var principle: String = ""
    @State private var preparation: String = ""
    
    
    var body: some View {
        VStack {
            Button {
                // action
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
                TextField("Napisz sposób pzygotawania", text: $preparation)
                    .textFieldStyle(OvalTextField())
                
            }
        }
        Spacer()
        VStack {
            Button {
                // action
            } label: {
                Text("Dodaj")
            }

        }
    }
}

#Preview {
    AddNewRecipeView()
}

struct OvalTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .gray, radius: 5)
    }
}



