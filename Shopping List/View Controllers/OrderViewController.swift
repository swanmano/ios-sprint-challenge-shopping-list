//
//  OrderViewController.swift
//  Shopping List
//
//  Created by Craig Swanson on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    // MARK: Properties
    var shoppingItemController: ShoppingItemController?
    
    // MARK: Outlets
    @IBOutlet weak var orderSummaryLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // MARK: Actions
    @IBAction func submitOrderButtonTapped(_ sender: UIButton) {
    }
    
    // MARK: Methods
    func updateViews() {
        guard let shoppingItemController = shoppingItemController else { return }
        orderSummaryLabel.text = String("You currently have \(shoppingItemController.addedItems.count) items on your shopping list")
    }
    
}
