//
//  ToDoListTableViewController.swift
//  TODOLISTAPP
//
//  Created by Johnpaulho on 11/26/17.
//  Copyright © 2017 ShoShoCodes. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    var toDoList = [ToDoItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadToDoList()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func unwindCancelAddToDo(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func unwindSaveAddToDo(unwindSegue: UIStoryboardSegue) {
        let addToDoVC = unwindSegue.source as? AddToDoItemViewController
        let item = addToDoVC?.toDoItem
        toDoList.append(item!)
        
        let newIndexPath = IndexPath(row: toDoList.count-1,section:0)
        tableView.beginUpdates()
        tableView.insertRows(at: [newIndexPath], with: .automatic)
        tableView.endUpdates()
    }

    func loadToDoList() {
        let item1 = ToDoItem(name: "Buy Milk")
        let item2 = ToDoItem(name: "Buy Egg")
        let item3 = ToDoItem(name: "Work on CS Project")
        toDoList += [item1, item2, item3]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return toDoList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ToDoItemTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ToDoItemTableViewCell
        
        let toDoItem = toDoList[indexPath.row]
        cell.toDoItem.text = toDoItem.itemName

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
