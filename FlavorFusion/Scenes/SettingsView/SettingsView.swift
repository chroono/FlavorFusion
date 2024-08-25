//
//  SettingsView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 25/08/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section(header: Text("Language")) {
                LanguageRow()
            }
            Section(header: Text("About")) {
                AboutRow()
            }
        }
    
    }
}

#Preview {
    SettingsView()
}
