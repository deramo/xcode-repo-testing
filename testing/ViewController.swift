//
//  ViewController.swift
//  testing
//
//  Created by Dominic on 5/25/16.
//  Copyright © 2016 Dominic. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation


class ViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textLabel.text = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonWasPushed(_ sender: UIButton) {
        
        self.textLabel.text = "Good work, \r you pressed the button"
        
    }

    @IBAction func captureWasPushed(_ sender: UIButton) {
 
        
    }
    
    
    
    @IBAction func didSwipe(_ sender: UISwipeGestureRecognizer) {
        
        self.textLabel.text = nil
    
    }
    
    @IBAction func didLongPress(_ sender: UILongPressGestureRecognizer) {
        
        self.textLabel.text = "Hey! \r\n let go of me"
        AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        

    }

}

