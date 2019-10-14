//
//  ShoppingItemController.swift
//  Shopping List
//
//  Created by Craig Swanson on 10/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ShoppingItemController {
    
    // MARK: Properties
    var itemNames = ["Apple", "Grapes", "Milk", "Muffin", "Popcorn", "Soda", "Strawberries"]
    
    // Build the default list array in ShoppingItemNames
    // Add each item to UserDefaults
    var ShoppingItemNames: [ShoppingItem] {
        var listArray: [ShoppingItem] = []
        for name in itemNames {
            let newItem = ShoppingItem(itemName: name, imageName: name)
            if !listArray.contains(newItem) {
                listArray.append(newItem)
                let userDefaults = UserDefaults.standard
                userDefaults.set(newItem, forKey: "SetListItem")
            }
        }
        return listArray
    }
}
