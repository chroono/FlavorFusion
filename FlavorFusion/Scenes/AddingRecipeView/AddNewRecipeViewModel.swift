//
//  AddNewRecipeViewModel.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 03/10/2024.
//

//import Foundation
//
//class AddNewRecipeViewModel: ObservableObject {
//    
//    @Published var dishes: [Dish] = []
//    
//    let dataService = Repository()
//    
//    @Published var id = UUID()
//    @Published var preparationTime: String
//    @Published var principle: String
//    @Published var preparation: String
//    @Published var imageDish = Data()
//    
//    init() {
//        
//    }
//
//    func getAllDishes() {
//        dishes = dataService.read()
//    }
//    
//    func createDish() {
//        dataService.create(iD: id, principle: principle, preparationTime: preparationTime, preparation: preparation, imageDish: imageDish)
//        getAllDishes()
//    }
//    
//
//}
