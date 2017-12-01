//
//  NEViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 29/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

/*
REPLACE
 
     cell?.textLabel?.text = NESoundtitle[indexPath.row].capitalized
     return cell!
 
 
TO
 
     cell.CategoryLbl.text = CategoryName[indexPath.row]
     cell.CategoryLogo.image = UIImage(named: CategoryImg[indexPath.row])
 
     return cell
 
 //CategoryLbl, CategoryLogo changed to correpsond name of links
 // should be only image needed if decide to use only one image containing graphics and name and symbol!
 
*/

import UIKit
import AVFoundation

var NESoundtitle = ["ocean"]
var NESoundimg = ["101ocean"]
var NESoundaudio = ["101ocean"]


class NEViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
  
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var NETable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return NESoundtitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = NETable.dequeueReusableCell(withIdentifier: "NEcell")
        cell?.textLabel?.text = NESoundtitle[indexPath.row].capitalized
        return cell!
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        do
        {
            let audioPath = Bundle.main.path(forResource: NESoundaudio[indexPath.row], ofType:".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            audioPlayer.play()
            
        }
        catch
        {
            print ("Error")
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
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
