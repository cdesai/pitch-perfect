//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Chinmay Desai on 24/10/2016.
//  Copyright © 2016 Chinmay Desai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        print("button pressed")
        recordingLabel.text! = "Recording in progress..."
        recordButton.enabled = false
        stopRecordingButton.enabled = true
    }

    @IBAction func stopRecording(sender: UIButton) {
        print("stop recording button pressed")
        recordingLabel.text! = "Tap to Record"
        recordButton.enabled = true
        stopRecordingButton.enabled = false
    }
    
    override func viewWillAppear(animated: Bool) {
        print("View will appear called.")
        stopRecordingButton.enabled = false
    }
    
}

