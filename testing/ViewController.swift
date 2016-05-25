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
    let session = AVCaptureSession()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textLabel.text = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonWasPushed(sender: UIButton) {
        
        self.textLabel.text = "Good work, \r you pressed the button"
        
    }

    @IBAction func didSwipe(sender: UISwipeGestureRecognizer) {
        
        self.textLabel.text = nil
    
    }
    
    @IBAction func didLongPress(sender: UILongPressGestureRecognizer) {
        
        self.textLabel.text = "Hey! \r\n let go of me"
        AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        

    }

}

