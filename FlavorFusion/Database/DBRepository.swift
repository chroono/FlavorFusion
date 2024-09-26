//
//  DBRepository.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 26/09/2024.
//

import CoreData

class Repository {
    static var context: NSManagedObjectContext {
        PersistenceController.shared.container.viewContext
    }
    
    func fetch() {
        
    }
    
    func new() {
        
    }
    
    func delete() {
        
    }
    
    func saveContext() throws {
        
    }
}
