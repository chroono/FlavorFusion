//
//  LanguageRow.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 25/08/2024.
//

import SwiftUI

struct LanguageRow: View {
    
    let language = ["Polski", "English"]
    @State var selectedLanguage = "Polski"
    
    var body: some View {
        HStack {
            Picker("Wybierz język", selection: $selectedLanguage) {
                ForEach(language, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}


#Preview {
    LanguageRow()
}
