//
//  HomeView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 25/08/2024.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("firstTime") var firstTime: Bool = true
    
    var body: some View {
            NavigationStack {
            ScrollView {
                ForEach(1..<5) {_ in
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: .infinity, height: 300)
   
                }
            }
            .navigationTitle("Flavor Fushion")
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            }
        

        .sheet(isPresented: $firstTime) {
            VStack(alignment: .leading) {
                Image(systemName: "command.square.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Flavor Fusion")
                    .font(.title)
                    .foregroundStyle(.red)
                Text("Najlepsze dania w jednym miejscu")
                    .font(.title2)
                Button("Kontynuuj") {
                    // action
                }
                .buttonStyle(StyleButton())
            }
        }
    }
}


#Preview {
    HomeView()
}
