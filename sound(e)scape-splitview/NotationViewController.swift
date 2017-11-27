//
//  NotationViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 26/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

var NotationCategoryName = ["NATURAL ENVIRONMENT", "ARTIFICIAL ENVIRONMENT", "NATURAL INHABITANT", "ARTIFICIAL INHABITANT", "CONTACT"]

var NotationCategoryIndex = 0

/*
 var CategoryName and CategoryIndex will be use also in the tableview controller OR view controller it connected
 
 CategoryIndex = 0 means when the row of category is tapped the IndexPath = CategoryIndex
 
 */

class NotationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
   
    

    @IBOutlet weak var NotationContainer: UIView!
    @IBOutlet weak var NotationCategoryTable: UITableView!
    @IBOutlet weak var NotationExplainScroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NotationCategoryName.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = NotationCategoryTable.dequeueReusableCell(withIdentifier: "NotationCategoryCell")
        
        cell?.textLabel?.text = NotationCategoryName[indexPath.row]
        
        return cell!
    }
    
    // CHANGE AFTER CREATE SUB-PAGES FOR EACH CATEGORY
    
    // REF = https://www.youtube.com/watch?v=A6Wl8ySrOZI
    
    // CODE: SEE BELOW
    
    
/*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        NotationCategoryIndex = indexPath.row
        performSegue(withIdentifier: "toCategory", sender: self)
        
    }
*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
