//
//  ShoppingListCVCellDelegate.swift
//  Shopping List
//
//  Created by Craig Swanson on 10/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol ShoppingListCVCellDelegate: AnyObject {
    func toggleAddToList(for cell: ShoppingListCollectionViewCell)
}
