//
//  AddItemViewController.swift
//  iTodo
//
//  Created by Mohammed Bouluad on 15/11/2016.
//  Copyright © 2016 Mohammed. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class AddItemViewController: UIViewController {

    @IBOutlet var titleLabel: UITextField!
    @IBOutlet var descriptionLabel: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBAction func AddItemButton(_ sender: AnyObject) {
        
        
        let item  = Item(title: titleLabel.text!,description: descriptionLabel.text!,date: datePicker.date)
    
        items.append(item)
        
        print(items)
        
        
 
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func post(){
        
        let item : [String : AnyObject] = ["title" : titleLabel.text as AnyObject,
                                           "description" : descriptionLabel.text as AnyObject,
                                           "date" : datePicker.date as AnyObject]
        
    let databaseRef = FIRDatabase.database().reference()
        databaseRef.child("Items").childByAutoId().setValue(item)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
