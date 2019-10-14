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
    var ShoppingItemName: [ShoppingItem] = []
    
    // Build the default list array in ShoppingItemNames
    // Add each item to UserDefaults
    var shoppingList: [ShoppingItem] {
        for name in itemNames {
            let newItem = ShoppingItem(itemName: name, imageName: name)
            if !ShoppingItemName.contains(newItem) {
                ShoppingItemName.append(newItem)
//                let userDefaults = UserDefaults.standard
//                userDefaults.set(newItem, forKey: "SetListItem")
            }
        }
        return ShoppingItemName
    }
    
    // Toggle the "Add to List" if user taps the button
    func updateAddToList(for shoppingItem: ShoppingItem) {
        guard let index = ShoppingItemName.index(of: shoppingItem) else { return }
        ShoppingItemName[index].addToList.toggle()
    }
}
