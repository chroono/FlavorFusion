//
//  CustomButton.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 27/08/2024.
//

import Foundation
import SwiftUI

struct customButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(12)
            .background(Color.indigo)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
