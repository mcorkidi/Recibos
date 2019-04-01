//
//  registerTableViewController.swift
//  Recibos
//
//  Created by Moises Corkidi on 4/1/19.
//  Copyright © 2019 Moises Corkidi. All rights reserved.
//

import UIKit

class registerTableViewController: UITableViewController {
    
    var receiptsArray = [Receipt]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return receiptsArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "receiptCell", for: indexPath)
        
        cell.textLabel?.text = receiptsArray[indexPath.row].number
        
        return cell
        
    }
    
    //MARK: - Delegate methods trable view
    
    
    
    //MARK: - Data Manipulation methods
    
    
    
    //MARK: - Add new receipt
    
    

}
