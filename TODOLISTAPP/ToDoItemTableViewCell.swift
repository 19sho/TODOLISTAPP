//
//  ToDoItemTableViewCell.swift
//  TODOLISTAPP
//
//  Created by Johnpaulho on 11/26/17.
//  Copyright © 2017 ShoShoCodes. All rights reserved.
//

import UIKit

class ToDoItemTableViewCell: UITableViewCell {

    @IBOutlet weak var toDoItem: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
