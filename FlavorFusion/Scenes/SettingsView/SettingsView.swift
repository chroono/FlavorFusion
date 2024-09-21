//
//  SettingsView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 25/08/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @ObservedObject var vm: SettingsViewModel
    
    var body: some View {
        List {
            Section(header: Text("Język")) {
                LanguageRow()
            }
            Section(header: Text("O")) {
                AboutRow()
            }
        }
    
    }
}

#Preview {
    SettingsView()
}
