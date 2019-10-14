//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Craig Swanson on 10/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

struct ShoppingItem: Equatable {
    var image: UIImage
    var itemName: String
    var addToList: Bool = false
    
    init(itemName: String, imageName: String) {
        self.itemName = itemName
        self.image = UIImage(named: imageName)!
    }
}
