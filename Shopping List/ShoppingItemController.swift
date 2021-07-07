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
    
    // Filters items that the user has added to their list to be delivered.
    var addedItems: [ShoppingItem] {
        shoppingList.filter({$0.addToList == true})
    }
    var notAddedItems: [ShoppingItem] {
        shoppingList.filter({$0.addToList == false})
    }

    // MARK: Methods
    // Toggle the "Add to List" if user taps the button
    func updateAddToList(for item: ShoppingItem) {
        guard let index = shoppingList.index(of: item) else { return }
        shoppingList[index].addToList.toggle()
    }
    
    func updateList() {
        self.initialList
    }
}
