//
//  AIViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 29/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit
import AVFoundation

var AISoundtitle = ["camerashutter", "cutleries 1", "cutleries 2", "fishing", "engine 1 - bus", "engine2", "engine 3 - shuttle", "engine 4 - minivan", "engine 5 - boat", "engine 6 - boat", "engine 7", "engine 8 - motorcycle", "floor washing", "busking 1 - dream", "busking 2 - harmonica", "busking 3 - erhu","busking - pier", "busking - subway 1", "busking - subway 2 - flute", "radio 1 - news", "radio 2 - show", "radio 3 - music", "speakerhsbc", "speaker - ManKwongSt", "speaker - park", "car theft warning", "policesiren 1", "policesiren 2", "policesiren 3 warning", "tramSignal 1 dingding", "tramSignal 2 dingding", "tramSignal 3 dingding", "tramSignal 4 leaving", "buzzer 1", "honking 1", "honking 2", "honking 3", "honking 4", "honking 5", "honking 6", "honking 7", "backCar 1", "backCar 2"]
var AISoundsymbol = ["401camerashutter", "402cutleries1", "402cutleries2", "403fishing", "405engine1bus", "405engine2", "405engine3shuttle", "405engine4minivan", "405engine5boat", "405engine6boat", "405engine7", "405engine8motorcycle","406washfloor", "407buskingfb1dream", "407buskingfb2harmonica", "407buskingfb3erhu", "407buskingpierlovetide", "407buskingsubway1", "407buskingsubway2flute", "408radio1news", "408radio2show", "408radio3music", "409speakerhsbc", "409speakerManKwongSt", "409speakerpark", "410cartheftwarning", "411policesiren1siren", "411policesiren2siren", "411policesiren3warning", "412tramSignal1dingding", "412tramSignal2dingding", "412tramSignal3dingding", "412tramSignal4leaving", "413buzzer1", "414honking1", "414honking2", "414honking3", "414honking4", "414honking5", "414honking6", "414honking7", "415backCar1", "415backCar2"]
var AISoundaudio = ["401camerashutter", "402cutleries1", "402cutleries2", "403fishing", "405engine1bus", "405engine2", "405engine3shuttle", "405engine4minivan", "405engine5boat", "405engine6boat", "405engine7", "405engine8motorcycle","406washfloor", "407buskingfb1dream", "407buskingfb2harmonica", "407buskingfb3erhu", "407buskingpierlovetide", "407buskingsubway1", "407buskingsubway2flute", "408radio1news", "408radio2show", "408radio3music", "409speakerhsbc", "409speakerManKwongSt", "409speakerpark", "410cartheftwarning", "411policesiren1siren", "411policesiren2siren", "411policesiren3warning", "412tramSignal1dingding", "412tramSignal2dingding", "412tramSignal3dingding", "412tramSignal4leaving", "413buzzer1", "414honking1", "414honking2", "414honking3", "414honking4", "414honking5", "414honking6", "414honking7", "415backCar1", "415backCar2"]

class AIViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var AITable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return AISoundtitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = AITable.dequeueReusableCell(withIdentifier: "AIcell")
        cell?.textLabel?.text = AISoundtitle[indexPath.row].capitalized
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        do
        {
            let audioPath = Bundle.main.path(forResource: AISoundaudio[indexPath.row], ofType:".mp3")
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
