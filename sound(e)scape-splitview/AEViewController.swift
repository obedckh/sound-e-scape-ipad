//
//  AEViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 29/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit
import AVFoundation


var AESoundtitle = ["gate1", "octopus1", "octopus2", "fountain1", "fountain2", "ventilation1", "ventilation2", "escalator1", "escalator2", "trafficlight - blink", "trafficlight - green", "trafficlight - red", "announcement1 - contonese", "announcement2 - english", "announcement3 - wetfloor", "announcement4", "gatebuzzer1 - carpark", "elevator"]
var AESoundsymbol = ["202gate1", "203octopus1", "203octopus2", "204fountain1", "204fountain2", "205ventilation1", "205ventilation2", "208escalator1", "208escalator2", "209trafficlightblink", "209trafficlightgreen", "209trafficlightred", "210announcement1esccanto", "210announcement2esceng", "210announcement3wetfloor", "210announcement4escedge", "211gatebuzzer1carpark", "212elevatorUp"]
var AESoundaudio = ["202gate1", "203octopus1", "203octopus2", "204fountain1", "204fountain2", "205ventilation1", "205ventilation2", "208escalator1", "208escalator2", "209trafficlightblink", "209trafficlightgreen", "209trafficlightred", "210announcement1esccanto", "210announcement2esceng", "210announcement3wetfloor", "210announcement4escedge", "211gatebuzzer1carpark", "212elevatorUp"]

class AEViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var AETable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return AESoundtitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = AETable.dequeueReusableCell(withIdentifier: "AEcell")
        cell?.textLabel?.text = AESoundtitle[indexPath.row].capitalized
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        do
        {
            let audioPath = Bundle.main.path(forResource: AESoundaudio[indexPath.row], ofType:".mp3")
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
