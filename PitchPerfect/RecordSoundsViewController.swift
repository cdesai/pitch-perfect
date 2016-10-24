//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Chinmay Desai on 24/10/2016.
//  Copyright © 2016 Chinmay Desai. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
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
        recordButton.enabled = false
        stopRecordingButton.enabled = true
        recordingLabel.text! = "Recording in progress..."
    }

    @IBAction func stopRecording(sender: UIButton) {
        print("stop recording button pressed")
        recordButton.enabled = true
        stopRecordingButton.enabled = false
        recordingLabel.text! = "Tap to Record"
    }
    
    override func viewWillAppear(animated: Bool) {
        print("View will appear called.")
        stopRecordingButton.enabled = false
    }
    
}

