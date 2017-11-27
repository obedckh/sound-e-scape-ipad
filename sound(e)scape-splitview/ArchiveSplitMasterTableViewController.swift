//
//  ArchiveSplitMasterTableViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 28/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

class ArchiveSplitMasterTableViewController: UITableViewController {

    var categories = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // self.clearsSelectionOnViewWillAppear = false

        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return self.categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArchiveMasterCell", for: indexPath)
        let category = self.categories[indexPath.row]
        cell.textLabel?.text = category.CategoryName

        // Configure the cell...

        return cell
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.categories.append(Category(CategoryName: "NATUTAL ENVIRONMENT", Categorytype: CategoryType.NaturalEnvironment))
        self.categories.append(Category(CategoryName: "ARTIFICIAL ENVIRONMENT", Categorytype: CategoryType.ArtificialEnvironment))
        self.categories.append(Category(CategoryName: "NATURAL INHABITANT", Categorytype: CategoryType.NaturalInhabitant))
        self.categories.append(Category(CategoryName: "ARTIFICIAL INHABITANT", Categorytype: CategoryType.ArtificialInhabitant))
        self.categories.append(Category(CategoryName: "CONTACT", Categorytype: CategoryType.Contact))
    
    
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
