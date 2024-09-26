//
//  PersistenceController.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 26/09/2024.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = .init(name: "Dish")
        
        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(filePath: "/dev/store")
        }
        
        container.loadPersistentStores { description, error in
            if let error {
                fatalError("Loading persistent stores failed: \(error)")
            }
        }
    }
}
