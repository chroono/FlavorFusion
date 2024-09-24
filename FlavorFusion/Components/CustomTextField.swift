//
//  CustomTextField.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 27/08/2024.
//

import Foundation
import SwiftUI

struct OvalTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .gray, radius: 5)
    }
}


