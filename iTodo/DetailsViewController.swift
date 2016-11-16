//
//  DetailsViewController.swift
//  iTodo
//
//  Created by Mohammed Bouluad on 16/11/2016.
//  Copyright © 2016 Mohammed. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var item : Item?
    
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var descriptionLbl: UILabel!
    @IBOutlet var dateLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

     
//        titleLbl.text = item?.title
//        descriptionLbl.text = item?.description
//        
//        let formatter = DateFormatter()
//        formatter.dateFormat = "dd.MM.yyyy"
//        let result = formatter.string(from: (item?.date)!)
//        
//        dateLbl.text = result
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
