//
//  CViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 29/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit
import AVFoundation

var CSoundtitle = ["drain Cover", "folding Newspaper", "jogging", "loading 1 - waterDeliver", "loading 2 - equipment", "tramRail", "sweeping", "cycling", "trolley 1 - IceHseSt", "trolley2 - subway", "trolley 3 - NewWorldTower", "trolley 4 - desvoeux", "footstep 1 - MTRheels", "footstep 2 - HSBCheels", "wheel 1 - connaughtrd", "wheel 2 - desVoeux"]
var CSoundimg = ["501drainCover", "502foldingNewspaper", "503jogging", "504loading1waterDeliver", "504loading2equipment", "505tramRail", "506sweeping", "507cycling", "508trolley1IceHseSt", "508trolley2subway", "508trolley3NewWorldTower", "508trolley4desvoeux", "509footstep1MTRheels", "509footstep2HSBCheels", "510wheel1connaughtrd", "510wheel2desVoeux"]
var CSoundaudio = ["501drainCover", "502foldingNewspaper", "503jogging", "504loading1waterDeliver", "504loading2equipment", "505tramRail", "506sweeping", "507cycling", "508trolley1IceHseSt", "508trolley2subway", "508trolley3NewWorldTower", "508trolley4desvoeux", "509footstep1MTRheels", "509footstep2HSBCheels", "510wheel1connaughtrd", "510wheel2desVoeux"]

class CViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var CTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return CSoundtitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = CTable.dequeueReusableCell(withIdentifier: "Ccell")
        cell?.textLabel?.text = CSoundtitle[indexPath.row].capitalized
        return cell!
        
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        do
        {
            let audioPath = Bundle.main.path(forResource: CSoundaudio[indexPath.row], ofType:".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            audioPlayer.play()
            
        }catch
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

