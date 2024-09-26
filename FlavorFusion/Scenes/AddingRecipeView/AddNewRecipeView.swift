//
//  AddNewRecipeView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 26/08/2024.
//

import SwiftUI
import PhotosUI

struct AddNewRecipeView: View {
    
    @State private var preparationTime: String = ""
    @State private var principle: String = ""
    @State private var preparation: String = ""

    @State var dishImage: UIImage?
    @State var photosPickerItem: PhotosPickerItem?

    var body: some View {
        VStack {
            PhotosPicker(selection: $photosPickerItem, matching: .images) {
                Image(uiImage: dishImage ?? UIImage(resource: .dish))
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
            }
            HStack {
                Text("Czas przygotowania:")
                    .font(.title3)
                TextField("Czas", text: $preparationTime)
                    .textFieldStyle(StyleTextField())
            }
            .padding()
            VStack {
                HStack {
                    Text("Składniki:")
                        .font(.title3)
                    TextField("Dodaj składnik", text: $principle)
                        .textFieldStyle(StyleTextField())
                }
                .padding()
            }
            VStack {
                Text("Sposób przygotowania")
                    .font(.title3)
                TextField("Podaj sposób przygotowania", text: $preparation)
                    .textFieldStyle(StyleTextField())
            }
        }
        Spacer()
        VStack {
            Button(action: {}, label: {
                Text("Dodaj")
            })
            .buttonStyle(StyleButton())

        }
        .onChange(of: photosPickerItem) { _, _ in
            Task {
                if let photosPickerItem,
                   let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
                    if let image = UIImage(data: data) {
                    dishImage = image
                    }
                    
                }
                photosPickerItem = nil
            }
        
        
        }
    }
}

#Preview {
    AddNewRecipeView()
}


