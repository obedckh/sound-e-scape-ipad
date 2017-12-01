//
//  NotationNewViewController.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 1/12/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

class NotationNewViewController: UIViewController {

    @IBOutlet weak var NotationTitle: UILabel!
    @IBOutlet weak var NotationLbl: UILabel!
    
    @IBOutlet weak var OfSoundBtn: UIButton!
    @IBOutlet weak var OfSpaceBtn: UIButton!
    @IBOutlet weak var OfListenBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func OfSound(_ sender: UIButton) {
        performSegue(withIdentifier: "ofsoundsegue", sender: self)
    }
    @IBAction func OfSpace(_ sender: UIButton) {
        performSegue(withIdentifier: "ofspacetimesegue", sender: self)
    }
    @IBAction func OfListener(_ sender: UIButton) {
        performSegue(withIdentifier: "oflistenersegue", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindtoNoation(segue: UIStoryboardSegue)
    {
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override var prefersStatusBarHidden: Bool
    {
        return true
    }

}
