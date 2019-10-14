//
//  ShoppingListCollectionViewCell.swift
//  Shopping List
//
//  Created by Craig Swanson on 10/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingListCollectionViewCell: UICollectionViewCell {
    
    // MARK: Properties
    
    var shoppingItem: ShoppingItem? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: Outlets
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var addedToList: UIButton!
    
    func updateViews() {
        guard let shoppingItem = shoppingItem else { fatalError("An item was not loaded in the cell.") }
        itemImage.image = shoppingItem.image
        itemName.text = shoppingItem.itemName
    }
}
