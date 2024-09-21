//
//  HomeView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 25/08/2024.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("firstTime") var firstTime: Bool = true
    @ObservedObject var vm: HomeViewModel

    let columns = [
        GridItem(.fixed(150)),
        GridItem(.adaptive(minimum: 300))
    ]
    
    var body: some View {
        NavigationStack() {
            ScrollView {
                LazyHGrid(rows: columns, content: {
                    
                })
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
                .buttonStyle(customButton())
            }
        }
    }
}


#Preview {
    HomeView()
}
