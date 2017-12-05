//
//  ToDoItem.swift
//  TODOLISTAPP
//
//  Created by Johnpaulho on 11/26/17.
//  Copyright © 2017 ShoShoCodes. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var itemName = ""
    
    init(name: String) {
        super.init()
        itemName = name
    }
}
