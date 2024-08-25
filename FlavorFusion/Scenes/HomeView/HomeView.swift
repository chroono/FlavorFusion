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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
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
            }
        }
    }
}

#Preview {
    HomeView()
}
