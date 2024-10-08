//
//  HomeView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 25/08/2024.
//

import SwiftUI
import CoreData

struct HomeView: View {
    
    @AppStorage("firstTime") var firstTime: Bool = true
    @State var searchText: String = ""
    @FetchRequest(
        sortDescriptors: [
            SortDescriptor(\Dish.principle)]
    )
    var dish: FetchedResults<Dish>
    
    var query: Binding<String> {
          Binding {
              searchText
          } set: { newValue in
              searchText = newValue
              dish.nsPredicate = newValue.isEmpty
                             ? nil
                             : NSPredicate(format: "place CONTAINS %@", newValue)
          }
      }
    
    @ObservedObject var vm: HomeViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if vm.dishes.isEmpty {
                    Text("Brak przepisów")
                        .bold()
                } else {
                    List(vm.dishes) { dish in
                        DishesRow()
                    }
                }
            }
            .navigationTitle("Flavor Fushion")
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("", systemImage: "plus") {
//                        AddNewRecipeView()
                    }
                }
            }
        }
        .sheet(isPresented: $firstTime) {
            VStack(alignment: .leading) {
                Image(.cook)
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
