//
//  ViewController.swift
//  Text to Speech
//
//  Created by Matt Daly on 11/5/21.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var myTextField: UITextField!
    
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
    
        let utterance = AVSpeechUtterance(string: "\(myTextField.text!)")
        
        
        utterance.rate = 0.45
        utterance.pitchMultiplier = 0.8
        utterance.postUtteranceDelay = 0.6
        utterance.volume = 0.9

        // Retrieve the British English voice.
        let voice = AVSpeechSynthesisVoice(language: "en-US")
        // Assign the voice to the utterance.
        utterance.voice = voice
            
        // Create a speech synthesizer.
        let synthesizer = AVSpeechSynthesizer()

        // Tell the synthesizer to speak the utterance.
        synthesizer.speak(utterance)

        myTextField.resignFirstResponder()
        
    }

    
    @IBAction func ReturnButtonTyped(_ sender: UITextField) {
        myTextField.resignFirstResponder()
    }
    
    }
    


