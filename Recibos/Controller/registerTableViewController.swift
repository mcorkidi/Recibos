//
//  registerTableViewController.swift
//  Recibos
//
//  Created by Moises Corkidi on 4/1/19.
//  Copyright © 2019 Moises Corkidi. All rights reserved.
//

import UIKit
import CoreData

class registerTableViewController: UITableViewController {
    
    var receiptsArray = [Receipt]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        loadRegister()
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return receiptsArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "receiptCell", for: indexPath)
        
        cell.textLabel?.text = receiptsArray[indexPath.row].receiptNumber
        
        return cell
        
    }
    
    //MARK: - Delegate methods table view
    
    
    
    //MARK: - Data Manipulation methods
    
    func saveRegister() {
        do {
            try context.save()
        } catch {
            print("Error saving category \(error)")
        }
        self.tableView.reloadData()
        
    }
    
    func loadRegister() {
        do {
            receiptsArray = try context.fetch(Receipt.fetchRequest())
        } catch {
            print("error fetching data from conterxt \(error)")
        }
        tableView.reloadData()
        
    }
    
    
    
    //MARK: - Add new receipt
    
    
    

}
