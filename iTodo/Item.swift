//
//  Item.swift
//  iTodo
//
//  Created by Mohammed Bouluad on 15/11/2016.
//  Copyright © 2016 Mohammed. All rights reserved.
//

import Foundation


struct Item{
    
    var title : String?
    var description : String?
    var date : Date?
    
    init(title: String, description: String, date : Date) {
        self.title   = title
        self.description = description
        self.date  = date
    }
    
    
}
