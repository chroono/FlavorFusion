//
//  DishesRow.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 07/10/2024.
//

import SwiftUI

struct DishesRow: View {
    
    var body: some View {
        HStack {
            Image(.cook)
            Spacer()
            Text("Empty")
        }
    }
}

#Preview {
    DishesRow()
}
