//
//  receiptViewController.swift
//  Recibos
//
//  Created by Moises Corkidi on 4/1/19.
//  Copyright © 2019 Moises Corkidi. All rights reserved.
//

import UIKit
import CoreData

class receiptViewController: UIViewController {
    @IBOutlet weak var dateInput: UITextField!
    @IBOutlet weak var receiptInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var amountInput: UITextField!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    func saveReceipt() {
        
        
    }
    
    

    @IBAction func addAndNewPressed(_ sender: UIButton) {
    }

    @IBAction func addAndBackPressed(_ sender: UIButton) {
    }

}
