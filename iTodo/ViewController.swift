//
//  ViewController.swift
//  iTodo
//
//  Created by Mohammed Bouluad on 15/11/2016.
//  Copyright © 2016 Mohammed. All rights reserved.
//

import UIKit
import Foundation

var items = [Item]()
class ViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        
        let date = Date()
        
        
        let item  = Item(title: "titre",description: "description",date: date)
        
        items.append(item)
        
        tableView.reloadData()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return items.count
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        
        cell?.textLabel?.text = items[indexPath.row].title
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: items[indexPath.row].date!)
        
        cell?.detailTextLabel?.text = result
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            items.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            print(items.count)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
        
        let destViewController = segue.destination as! DetailsViewController
        var itemToView : Item
        itemToView = items[indexPath.row]
        destViewController.item = itemToView
        
    }*/
    
}

