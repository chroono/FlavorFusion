//
//  AddNewRecipeViewModel.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 03/10/2024.
//

import Foundation

class AddNewRecipeViewModel: ObservableObject {
    
    @Published var dishes: [Dish] = []
    
    let dataService = Repository()
    
    @Published var id = UUID()
    @Published var preparationTime: String
    @Published var principle: String
    @Published var preparation: String
    @Published var imageDish = Data()
    
    init(dishes: [Dish], id: UUID = UUID(), preparationTime: String, principle: String, preparation: String, imageDish: Data = Data()) {
        self.dishes = dishes
        self.id = id
        self.preparationTime = preparationTime
        self.principle = principle
        self.preparation = preparation
        self.imageDish = imageDish
    }
    
    func createDish() {
        dataService.create(iD: id, principle: principle, preparationTime: preparationTime, preparation: preparation, imageDish: imageDish)
    }
}
