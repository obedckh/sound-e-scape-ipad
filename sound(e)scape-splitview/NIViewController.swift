//
//  NIViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 29/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit
import AVFoundation

var NISoundtitle = ["bird1", "bird2", "bird3", "cicada1", "cicada2", "baby", "chatter1footbridge", "chatter2alexander", "chatter3diner", "chatter4behindPostoffice", "chattercanto1", "chattercanto2", "chattercanto3", "chattercanto4", "chattercanto5", "chattercanto6", "chattereng1jardine", "chattereng2subway", "chatterkorean1", "chatterkorean2", "chatterlaugh", "chatterpth1", "chatterpth2", "chattertagalog1", "chattertagalog2"]
var NISoundsymbol = ["301bird1", "301bird2", "301bird3", "302cicada1", "302cicada2", "303baby", "304chatter1footbridge", "304chatter2alexander", "304chatter3diner", "304chatter4behindPostoffice", "304chattercanto1", "304chattercanto2", "304chattercanto3", "304chattercanto4", "304chattercanto5", "304chattercanto6", "304chattereng1jardine", "304chattereng2subway", "304chatterkorean1", "304chatterkorean2", "304chatterlaugh", "304chatterpth1", "304chatterpth2", "304chattertagalog1", "304chattertagalog2"]
var NISoundaudio = ["301bird1", "301bird2", "301bird3", "302cicada1", "302cicada2", "303baby", "304chatter1footbridge", "304chatter2alexander", "304chatter3diner", "304chatter4behindPostoffice", "304chattercanto1", "304chattercanto2", "304chattercanto3", "304chattercanto4", "304chattercanto5", "304chattercanto6", "304chattereng1jardine", "304chattereng2subway", "304chatterkorean1", "304chatterkorean2", "304chatterlaugh", "304chatterpth1", "304chatterpth2", "304chattertagalog1", "304chattertagalog2"]

class NIViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var NITable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return NISoundtitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = NITable.dequeueReusableCell(withIdentifier: "NIcell")
        cell?.textLabel?.text = NISoundtitle[indexPath.row].capitalized
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        do
        {
            let audioPath = Bundle.main.path(forResource: NISoundaudio[indexPath.row], ofType:".mp3")
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
