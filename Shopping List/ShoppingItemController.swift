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
    var shoppingList: [ShoppingItem] = []
    var initialList: [ShoppingItem] {
        for name in itemNames {
            let newItem = ShoppingItem(itemName: name, imageName: name)
            if !shoppingList.contains(newItem) {
                shoppingList.append(newItem)
            }
        }
        return shoppingList
    }

    func createList() {
        for name in itemNames {
            let newItem = ShoppingItem(itemName: name, imageName: name)
            if !shoppingList.contains(newItem) {
                shoppingList.append(newItem)
//                let userDefaults = UserDefaults.standard
//                userDefaults.set(newItem, forKey: "SetListItem")
            }
        }
    }
    
    // Toggle the "Add to List" if user taps the button
    func updateAddToList(for item: ShoppingItem) {
        guard let index = shoppingList.index(of: item) else { return }
        shoppingList[index].addToList.toggle()
    }
    
    func updateList() {
        self.initialList
    }
}
