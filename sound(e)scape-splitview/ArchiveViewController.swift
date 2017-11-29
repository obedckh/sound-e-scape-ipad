//
//  ArchiveViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 26/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

//var ArchiveCategoryName = ["NATURAL ENVIRONMENT", "ARTIFICIAL ENVIRONMENT", "NATURAL INHABITANT", "ARTIFICIAL INHABITANT", "CONTACT"]
//var ArchiveCategoryIndex = 0


class ArchiveViewController: UIViewController {
    
    //, UITableViewDataSource, UITableViewDelegate
   
    @IBOutlet weak var ArchiveContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
/*        let path = Bundle.main.path(forResource: "ArchiveSound", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        
        do{
        let data = try Data(contentsOf: url)
            let ArchiveSound = try JSONDecoder().decode([String : [{String}]].self, from: data)
        
        } catch {}
 */
/*
  
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArchiveCategoryName.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = ArchiveCategoryTable.dequeueReusableCell(withIdentifier: "ArchiveCategoryCell")
        
        cell?.textLabel?.text = ArchiveCategoryName[indexPath.row]
        
        return cell!
    }
    
    
*/
    // CHANGE AFTER CREATE SUB-PAGES FOR EACH CATEGORY
    
    // REF = https://www.youtube.com/watch?v=A6Wl8ySrOZI
    
    // CODE: SEE BELOW
    
/*
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        ArchiveCategoryIndex = indexPath.row
        performSegue(withIdentifier: "toCategory", sender: self)
        
    }
*/
/*
     if (NESoundTable.isHidden == true) {
        NESoundTable.isHidden = false
     
     } else {
     NESoundTable.isHidden = true
     }
*/
    
    
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
