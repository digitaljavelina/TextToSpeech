//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Michael Henry on 11/9/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//

import UIKit
import AVFoundation
import WatchKit

class WK

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func textToSpeech(sender: UIButton) {
        
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.3
        synth.speakUtterance(myUtterance)
    }

}

