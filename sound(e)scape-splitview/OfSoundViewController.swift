//
//  OfSoundViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 1/12/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit
import AVFoundation

class OfSoundViewController: UIViewController {
    
    var SoundaudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var A1btn: UIButton!
    @IBOutlet weak var A2btn: UIButton!
    @IBOutlet weak var A3btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
