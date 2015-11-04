//
//  Unit2Activity1ViewController.swift
//  TestIsleem
//
//  Created by Cole Conte on 8/4/15.
//  Copyright (c) 2015 Bucknell University. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation



class Unit2NisbaIntroVC: UIViewController{
    var audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Algerian_imm", ofType: "m4a")!), fileTypeHint: nil)
    
    @IBAction func play(sender: UIButton) {
        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sender.currentTitle!+"_imm", ofType: "m4a")!), fileTypeHint: nil)
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer.prepareToPlay()
            }
    
}