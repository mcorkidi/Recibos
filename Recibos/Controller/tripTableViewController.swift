//
//  tripTableViewController.swift
//  Recibos
//
//  Created by Moises Corkidi on 4/1/19.
//  Copyright © 2019 Moises Corkidi. All rights reserved.
//

import UIKit
import CoreData

class tripTableViewController: UITableViewController {
    
    var tripsArray = [Trip]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("before error")
        loadTrip()
       
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return tripsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tripCell", for: indexPath)

        cell.textLabel?.text = tripsArray[indexPath.row].tripDate
        
        return cell
    }
    
    //MARK: Table view delegates
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToRegister", sender: self)
    }
    
    
    
    
    
    
    //MARK: Manipulation methods
    
    func loadTrip() {
        
        do {
            tripsArray = try context.fetch(Trip.fetchRequest())
        } catch {
            print("Error loading \(error)")
        }
        self.tableView.reloadData()
        
    }
    
    
    func saveTrip() {
        
        do {
            try context.save()
        } catch {
            print("Error saving \(error)")
        }
        tableView.reloadData()
        
    }
 
    //MARK: Add new trips
    

    @IBAction func newTripButtonPressed(_ sender: UIBarButtonItem) {
       
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Create new trip.", message: "", preferredStyle: .alert)

        let action = UIAlertAction(title: "Create Trip", style: .default) { (action) in
            
            let newTrip = Trip(context: self.context)
            newTrip.tripDate = textField.text!
            
            self.tripsArray.append(newTrip)
            
            self.saveTrip()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Enter your trip dates and place"
            textField = alertTextField
        }

        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        

    }
    




}
