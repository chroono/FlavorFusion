//
//  DBRepository.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 26/09/2024.
//

import CoreData

class Repository {
    
     var context: NSManagedObjectContext {
        PersistenceController.shared.container.viewContext
    }
    
    func saveChanges() {
        let context = context
        
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print("Not save changes to Core Data", error.localizedDescription)
            }
        }
    }
    
    func create(iD: UUID, principle: String, preparationTime: String, preparation: String, imageDish: Data) {
        let entity = Dish(context: context)
        
        entity.iD = iD
        entity.preparation = preparation
        entity.preparationTime = preparationTime
        entity.principle = principle
        entity.imageDish = imageDish
        
        saveChanges()
    }
    
    func read() -> [Dish] {
        var results: [Dish] = []
        
        let request = NSFetchRequest<Dish>(entityName: "Dish")
        
        do {
            results = try context.fetch(request)
        } catch {
            print("Not fetch dish from Core Data")
        }
        
        return results
    }
    
    func update(entity: Dish, iD: UUID? = nil, preparation: String? = nil, preparationTime: String? = nil, principle: String? = nil, imageDish: Data? = nil ) {
        
        var hasChanges: Bool = false
        
        if iD != nil {
            entity.iD = iD!
            hasChanges = true
        }
        
        if preparation != nil {
            entity.preparation = preparation!
            hasChanges = true
        }
        
        if preparationTime != nil {
            entity.preparationTime = preparationTime!
            hasChanges = true
        }
        
        if principle != nil {
            entity.principle = principle!
            hasChanges = true
        }
        if imageDish != nil {
            entity.imageDish = imageDish!
            hasChanges = true
        }
    }
    
    func delete(_ entity: Dish) {
        context.delete(entity)
        saveChanges()
    }
    
}
