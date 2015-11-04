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



class Unit2IntroVC: UIViewController{
    var audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Beautiful_ima", ofType: "m4a")!), fileTypeHint: nil)
    
    @IBAction func play(sender: UIButton) {
        if(sender.currentTitle=="Close" || sender.currentTitle=="Strong"){
            let num=Int(arc4random_uniform(UInt32(2)))
            if (num==0){
                audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sender.currentTitle!+"_LC_ima", ofType: "m4a")!), fileTypeHint: nil)
            }
            else{
                audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sender.currentTitle!+"_MC_ima", ofType: "m4a")!), fileTypeHint: nil)
            }
        }
        else{
            audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sender.currentTitle!+"_ima", ofType: "m4a")!), fileTypeHint: nil)
        }
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer.prepareToPlay()
    }
    
}