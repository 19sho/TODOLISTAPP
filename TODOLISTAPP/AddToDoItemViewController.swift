//
//  ViewController.swift
//  TODOLISTAPP
//
//  Created by Johnpaulho on 11/26/17.
//  Copyright © 2017 ShoShoCodes. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
    var toDoItem: ToDoItem?
    
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var toDoTextBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIBarButtonItem, button == saveButton else {
            return
        }
        
        let name = toDoTextBox.text
        toDoItem = ToDoItem(name: name!)
    }

}

