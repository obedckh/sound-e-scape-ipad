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
    
    @IBOutlet weak var Archivetitle: UILabel!
    @IBOutlet weak var ArchiveLbl: UILabel!
    
    @IBOutlet weak var NEBtn: UIButton!
    @IBOutlet weak var AEBtn: UIButton!
    @IBOutlet weak var NIBtn: UIButton!
    @IBOutlet weak var AIBtn: UIButton!
    @IBOutlet weak var CBtn: UIButton!
    
    
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
    
    @IBAction func NE(_ sender: UIButton)
    {
        performSegue(withIdentifier: "NEsegue", sender: self)
    }
    
    @IBAction func AE(_ sender: UIButton)
    {
        performSegue(withIdentifier: "AEsegue", sender: self)
    }
    
    @IBAction func NI(_ sender: UIButton)
    {
        performSegue(withIdentifier: "NIsegue", sender: self)
    }
    
    @IBAction func AI(_ sender: UIButton)
    {
        performSegue(withIdentifier: "AIsegue", sender: self)
    }
    
    @IBAction func C(_ sender: UIButton)
    {
        performSegue(withIdentifier: "Csegue", sender: self)
    }
    
    @IBAction func unwindtoArchive(segue: UIStoryboardSegue)
    {
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }

}
