//
//  ArchiveCategoryViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 29/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

var CategoryLbl = ["Natural Environment", "Artificial Environment", "Natural Inhabitant", "Artificial Inhabitant", "Contact"]
var CategoryImg = ["Natural Environment Logo", "Artificial Environment Logo","Natural Inhabitant Logo","Artificial Inhabitant Logo", "Contact Logo"]
var CategoryIndex = 0


class ArchiveCategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var categoryTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return CategoryLbl.count
        
    }
     
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = categoryTable.dequeueReusableCell(withIdentifier: "ArchiveCategoryCell")
       
        cell?.textLabel?.text = CategoryLbl[indexPath.row]
        
        return cell!
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       CategoryIndex  = indexPath.row
        if indexPath.row == 0
        {
            performSegue(withIdentifier: "NEsegue", sender: self)
        }
        else if indexPath.row == 1
        {
            performSegue(withIdentifier: "AEsegue", sender: self)
        }
        else if indexPath.row == 2
        {
            performSegue(withIdentifier: "NIsegue", sender: self)
        }
        else if indexPath.row == 3
        {
            performSegue(withIdentifier: "AIsegue", sender: self)
        }
        else if indexPath.row == 4
        {
            performSegue(withIdentifier: "Csegue", sender: self)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
}
