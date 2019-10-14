//
//  ShoppingListCollectionViewController.swift
//  Shopping List
//
//  Created by Craig Swanson on 10/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class ShoppingListCollectionViewController: UICollectionViewController {
    
    // MARK: Properties
    
    var shoppingItemController = ShoppingItemController()
    var shoppingItem: ShoppingItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        // The following line was added to ensure the initial list was updated
        shoppingItemController.updateList()
        self.clearsSelectionOnViewWillAppear = false

    }

    
    // MARK: - Navigation
    // Called when user taps on the Next bar button after selecting their shopping items
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowOrderScene" {
            guard let orderVC = segue.destination as? OrderViewController else { fatalError() }
            orderVC.shoppingItemController = shoppingItemController
        }
    }
    

    // MARK: UICollectionViewDataSource
    // Uncomment to make sections based on if an item has been added to the list
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // builds the number of cells that are currently in the ShoppingList array
        return shoppingItemController.shoppingList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as? ShoppingListCollectionViewCell else { fatalError("The cell was not found") }
        cell.delegate = self
        let shoppingItem = shoppingItemController.shoppingList[indexPath.item]
        cell.shoppingItem = shoppingItem
        return cell
    }

}

    // MARK: Delegates
// The delegate is used to change the label from "Not Added" to "Added"
extension ShoppingListCollectionViewController: ShoppingListCVCellDelegate {
    func toggleAddToList(for cell: ShoppingListCollectionViewCell) {
        guard let shoppingItem = cell.shoppingItem else {return}
        shoppingItemController.updateAddToList(for: shoppingItem)
        collectionView?.reloadData()
    }
}

