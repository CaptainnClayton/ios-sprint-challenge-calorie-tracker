//
//  Entry+Convienence.swift
//  CalorieTracker
//
//  Created by Clayton Watkins on 8/14/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import Foundation
import CoreData

extension CalorieEntry {
    @discardableResult convenience init(calorieAmount: String, date: Date = Date(), context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.calorieAmount = calorieAmount
        self.date = date
    }
    
    var dateAdded: String {
        guard let dateAdded = self.date else { return "" }
        
        let df = DateFormatter()
        df.dateFormat = "MMM d Y 'at' h:mm a"
        let date = df.string(from: dateAdded)
        return date
    }
}
