//
//  HomeViewModel.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 03/10/2024.
//

import Foundation
import CoreData

class HomeViewModel: ObservableObject {
    @Published var dishes: [Dish] = []
    
    let dataService = Repository()
    
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
