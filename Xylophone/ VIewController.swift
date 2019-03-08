//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    // Use this class for audio playback unless you are playing audio captured from a network stream or require very low I/O latency.
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //    // Snippet from https://stackoverflow.com/questions/32036146/how-to-play-a-sound-using-swift
    //    func playSound(_ noteIndex: Int) {
    //        guard let url = Bundle.main.url(forResource: "note\(noteIndex)", withExtension: "wav") else { return }
    //
    //        do {
    //            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
    //            try AVAudioSession.sharedInstance().setActive(true)
    //
    //            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
    //            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
    //
    //            /* iOS 10 and earlier require the following line:
    //             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
    //
    //            guard let player = player else { return }
    //
    //            player.play()
    //
    //        } catch let error {
    //            print(error.localizedDescription)
    //        }
    //    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        print(sender.tag)
        playSound(sender.tag)
        
    }
    
    func playSound(_ noteIndex: Int) {
        let soundURL = Bundle.main.url(forResource: "note\(noteIndex)", withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
}

