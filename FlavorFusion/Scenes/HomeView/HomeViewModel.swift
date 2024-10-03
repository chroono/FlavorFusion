//
//  HomeViewModel.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 03/10/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var dishes: [Dish] = []
    
    let dataService = Repository()
    
    @Published var id = UUID()
    @Published var preparationTime: String
    @Published var principle: String
    @Published var preparation: String
    @Published var imageDish = Data()
    
    init() {
        getAllDishes()
    }
    
    func getAllDishes() {
        dishes = dataService.read()
    }
    
    func dishUpdate(dish: Dish) {
        dataService.update(entity: dish)
        getAllDishes()
    }
}
