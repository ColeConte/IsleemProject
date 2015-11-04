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



class Unit2Activity1ViewController: UIViewController{
    
    var nouns: [String]?
    var adjectives: [String]?
    var initialAdjectives: [String]?
    var englishText : [UIButton]!
    var defOrIndefNisba = 0
    var correctChoice = 0
    var aOrAn: String = "A "
    var nounIndex=0
    var adjIndex=0
    var incorrectNoun1=0
    var incorrectAdj1=0
    var incorrectNoun2=0
    var incorrectAdj2=0
    var activityType="NonNisbaIndef"
    var nounAudio=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Head_in", ofType: "m4a")!), fileTypeHint: nil)
    var adjAudio=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Beautiful_ima", ofType: "m4a")!), fileTypeHint: nil)
    var goodJob = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("jameel", ofType: "m4a")!), fileTypeHint: nil)
    var tryAgain = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("kamaan marra", ofType: "m4a")!), fileTypeHint: nil)
    var notQuite = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Arabic_NOT QUITE", ofType: "m4a")!), fileTypeHint: nil)
    @IBOutlet weak var english1: UIButton!
    @IBOutlet weak var english2: UIButton!
    @IBOutlet weak var english3: UIButton!
    @IBAction func nextPressed(sender: AnyObject) {
        self.next()
    }
    @IBAction func english1Selected(sender: AnyObject) {
        if(correctChoice==0){
            let alert = UIAlertController(title: "Correct", message: "Good job!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            goodJob.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
            next()
        }
        else{
            let alert = UIAlertController(title: "Incorrect", message: "Try again!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            tryAgain.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
        }

        
    }
    
    @IBAction func english2Selected(sender: AnyObject) {
        if(correctChoice==1){
            let alert = UIAlertController(title: "Correct", message: "Good job!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            goodJob.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
            next()
        }
        else{
            let alert = UIAlertController(title: "Incorrect", message: "Try again!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            tryAgain.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
        }

    }

    @IBAction func english3Selected(sender: AnyObject) {
        if(correctChoice==2){
            let alert = UIAlertController(title: "Correct", message: "Good job!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            goodJob.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
            next()
        }
        else{
            let alert = UIAlertController(title: "Incorrect", message: "Try again!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            tryAgain.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
        }

    }
    func removeAdjectives(noun: String){
        switch noun{
            case "University":
                adjectives?.removeAtIndex(23)
                adjectives?.removeAtIndex(21)
                adjectives?.removeAtIndex(20)
                adjectives?.removeAtIndex(13)
                adjectives?.removeAtIndex(12)
                adjectives?.removeAtIndex(8)
                break;
        case "School":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Home":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Market":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(2)
            break;
        case "City":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            break;
        case "State":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Supermarket":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(2)
            break;
        case "Neighborhood":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Hotel":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Gym":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Shorts":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Building":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Cinema":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Town":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Station":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Car":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Taxi":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Bus":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Train":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Airplane":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Tshirt":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            break;
        case "t-shirt":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Room":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Bath":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(3)
            break;
        case "Toilet":
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(3)
            break;
        case "Road":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(3)
            adjectives?.removeAtIndex(2)
            break;
        case "Highway":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(3)
            adjectives?.removeAtIndex(2)
            break;
        case "Door":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Window":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(8)
            break;
        case "Bread":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(0)
            break;
        case "Sandwich":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(0)
            break;
        case "Water":
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(19)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(1)
            adjectives?.removeAtIndex(0)
            break;
        case "Juice":
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(19)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(1)
            adjectives?.removeAtIndex(0)
            break;
        case "Coffee":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(19)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(1)
            adjectives?.removeAtIndex(0)
            break;
        case "Tea":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(19)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(1)
            adjectives?.removeAtIndex(0)
            break;
        case "Milk":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(19)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(9)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(4)
            adjectives?.removeAtIndex(1)
            adjectives?.removeAtIndex(0)
            break;
        case "Cup": //fix for bigcup
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            break;
        case "Glass":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            break;
        case "Book":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(15)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(7)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            break;
        case "Notebook":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(15)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(7)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            break;
        case "Pen":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(15)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(7)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            break;
        case "Mobile":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            break;
        case "Phone":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            break;
        case "TV":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            break;
        case "Video":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            break;
        case "Picture":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(8)
            break;
        case "State-political": //fix
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(2)
            break;
        case "Restaurant":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(2)
            break;
        case "Meat":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(19)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(1)
            adjectives?.removeAtIndex(0)
            break;
        case "Chicken":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(19)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(1)
            adjectives?.removeAtIndex(0)
            break;
        case "Salad": //double check
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            break;
        case "Beer":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(0)
            break;
        case "Wine":
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(22)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(0)
            break;
        case "Man":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(15)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(7)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(3)
            break;
        case "Woman":
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(15)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(7)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(3)
            break;
        case "Head":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(14)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(12)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(3)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(0)
        case "Hand":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(14)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(3)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(0)
            break;
        case "Leg":
            adjectives?.removeAtIndex(24)
            adjectives?.removeAtIndex(23)
            adjectives?.removeAtIndex(21)
            adjectives?.removeAtIndex(20)
            adjectives?.removeAtIndex(18)
            adjectives?.removeAtIndex(17)
            adjectives?.removeAtIndex(16)
            adjectives?.removeAtIndex(14)
            adjectives?.removeAtIndex(13)
            adjectives?.removeAtIndex(11)
            adjectives?.removeAtIndex(10)
            adjectives?.removeAtIndex(8)
            adjectives?.removeAtIndex(6)
            adjectives?.removeAtIndex(5)
            adjectives?.removeAtIndex(3)
            adjectives?.removeAtIndex(2)
            adjectives?.removeAtIndex(0)
        default:
            break;
        }
    }
    
    func next(){
        /*let gJ=Int(arc4random_uniform(UInt32(4)))
        print(gJ)
        switch gJ{
        case 0:
            goodJob = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("helaw kteer", ofType: "m4a")!), fileTypeHint: nil);
            goodJob.prepareToPlay()
            break;
        case 1:
            goodJob = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("jameel", ofType: "m4a")!), fileTypeHint: nil);
            goodJob.prepareToPlay()
            break;
        case 2:
            goodJob = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ya Salaam", ofType: "m4a")!), fileTypeHint: nil);
            goodJob.prepareToPlay()
            break;
        case 3:
            goodJob = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mumtaaz", ofType: "m4a")!), fileTypeHint: nil);
            goodJob.prepareToPlay()
            break;
        default:
            break;
        }*/
        defOrIndefNisba=Int(arc4random_uniform(UInt32(2)))
        if(activityType=="Nisba"){
            if defOrIndefNisba==0{
                adjectives=["Algerian_dmm","American_dmm","Arab_dmm","Australian_dmm","Bahrani_dmm","British_dmm","Canadian_dmm","Chinese_dmm","Egyptian_dmm","Emirates_dmm","European_dmm","French_dmm","German_dmm","Iraqi_dmm","Israeli_dmm","Italian_dmm","Japanese_dmm","Jordanian_dmm","Korean_dmm","Kuwaiti_dmm","Lebanese_dmm","Libyan_dmm","Moroccan_dmm","Omani_dmm","Palestinian_dmm","Qatari_dmm","Russian_dmm","Saudi_dmm","Spanish_dmm","Sudanese_dmm","Syrian_dmm","Tunisian_dmm","Turkish_dmm","Yemeni_dmm"]
                nouns=["Man_dn","Wine_dn","Chicken_dn","Restaurant_dn","Bath_dn","t-shirt_dn","Train_dn","Toilet_dn","Hotel_dn","Gym_dn","Street-road_dn","Supermarket_dn","Highway_dn","Market_LC_dn","Window_dn","Market_MC_dn","Door_dn","Small_cup_dn","Sandwich_dn","Milk_dn","Pen_MC_dn","Pen_LC_dn","Mobile_dn","Juice_dn","Notebook_dn","Bread_dn","Book_dn","TV_dn","Video_dn","Tea_dn","Phone_dn","Glass_dn","Shorts_dn"]
            }
            else{
                adjectives=["Algerian_imm","American_imm","Arab_imm","Australian_imm","Bahrani_imm","British_imm","Canadian_imm","Chinese_imm","Egyptian_imm","Emirates_imm","European_imm","French_imm","German_imm","Iraqi_imm","Israeli_imm","Italian_imm","Japanese_imm","Jordanian_imm","Korean_imm","Kuwaiti_imm","Lebanese_imm","Libyan_imm","Moroccan_imm","Omani_imm","Palestinian_imm","Qatari_imm","Russian_imm","Saudi_imm","Spanish_imm","Sudanese_imm","Syrian_imm","Tunisian_imm","Turkish_imm","Yemeni_imm"]
                nouns=["Man_in","Wine_in","Chicken_in","Restaurant_in","Bath_in","Tshirt_in","Train_in","Toilet_in","Hotel_in","Gym_in","Street-road_in","Supermarket_in","Highway_in","Market_LC_in","Window_in","Market_MC_in","Door_in","Smallcup_in","Sandwich_in","Milk_in","Pen_MC_in","Pen_LC_in","Mobile_in","Juice_in","Notebook_in","Bread_in","Book_in","TV_in","Video_in","Tea_in","Phone_in","Glass_in","Shorts_in"]
            }
            
        }
        nounIndex=Int(arc4random_uniform(UInt32(nouns!.count)))
        if(activityType=="NonNisbaIndef" || activityType=="NonNisbaDef"){
            initialAdjectives=adjectives
            removeAdjectives(nouns![nounIndex].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"))
        }
        adjIndex=Int(arc4random_uniform(UInt32(adjectives!.count)))
        correctChoice=Int(arc4random_uniform(3))
        chooseIncorrects()
        nounAudio=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(nouns![nounIndex], ofType: "m4a")!), fileTypeHint: nil)
        adjAudio=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(adjectives![adjIndex], ofType: "m4a")!), fileTypeHint: nil)
        nounAudio.prepareToPlay()
        adjAudio.prepareToPlay()
        aOrAnFunc(adjectives![adjIndex])
        englishText![correctChoice].setTitle( aOrAn + adjectives![adjIndex].stringByReplacingOccurrencesOfString("_ima", withString: " ").stringByReplacingOccurrencesOfString("_dma", withString: " ").stringByReplacingOccurrencesOfString("_dmm", withString: " ").stringByReplacingOccurrencesOfString("_imm", withString: " ").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "") + nouns![nounIndex].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"), forState: .Normal)
        aOrAnFunc(adjectives![incorrectAdj1])
        englishText![(correctChoice+2)%3].setTitle( aOrAn + adjectives![incorrectAdj1].stringByReplacingOccurrencesOfString("_ima", withString: " ").stringByReplacingOccurrencesOfString("_dma", withString: " ").stringByReplacingOccurrencesOfString("_dmm", withString: " ").stringByReplacingOccurrencesOfString("_imm", withString: " ").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "") + nouns![incorrectNoun1].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"), forState: .Normal)
        aOrAnFunc(adjectives![incorrectAdj2])
        englishText![(correctChoice+4)%3].setTitle( aOrAn + adjectives![incorrectAdj2].stringByReplacingOccurrencesOfString("_ima", withString: " ").stringByReplacingOccurrencesOfString("_dma", withString: " ").stringByReplacingOccurrencesOfString("_dmm", withString: " ").stringByReplacingOccurrencesOfString("_imm", withString: " ").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "") + nouns![incorrectNoun2].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"), forState: .Normal)
            if(activityType=="NonNisbaIndef" || activityType=="NonNisbaDef"){
                adjectives=initialAdjectives
        }
    }
    
    func aOrAnFunc(adjective: String){
        if (adjective.hasSuffix("_dma")||adjective.hasSuffix("_dmm")){
            aOrAn="The "
        }
        else if(adjective.hasPrefix("European")){
            aOrAn="A "
        }
        else if(adjective.characters.first=="A" || adjective.characters.first=="E" || adjective.characters.first=="I" || adjective.characters.first=="O" || adjective.characters.first=="U"){
            aOrAn="An "
        }
        else{
            aOrAn="A "
        }
        
    }
    
    func chooseIncorrects(){
        incorrectNoun1=Int(arc4random_uniform(UInt32(nouns!.count)))
        incorrectNoun2=Int(arc4random_uniform(UInt32(nouns!.count)))
        incorrectAdj1=Int(arc4random_uniform(UInt32(adjectives!.count)))
        incorrectAdj2=Int(arc4random_uniform(UInt32(adjectives!.count)))
        while(incorrectNoun1==nounIndex){
            incorrectNoun1=Int(arc4random_uniform(UInt32(nouns!.count)))
        }
        while(incorrectNoun2==nounIndex || incorrectNoun2==incorrectNoun1){
            incorrectNoun2=Int(arc4random_uniform(UInt32(nouns!.count)))
        }
        while(incorrectAdj1==adjIndex){
            incorrectAdj1=Int(arc4random_uniform(UInt32(adjectives!.count)))
        }
        while(incorrectAdj2==adjIndex || incorrectAdj2==incorrectAdj1){
            incorrectAdj2=Int(arc4random_uniform(UInt32(adjectives!.count)))
        }

        
    }
    
    @IBAction func play(sender: AnyObject) {
        //work on this!!!
        nounAudio.play()//play noun
        while(nounAudio.playing){
            //do nothing
        }
        //usleep(10000)
        adjAudio.play() //play adj
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defOrIndefNisba=Int(arc4random_uniform(UInt32(2)))
        englishText = [english1,english2,english3]
        if(activityType=="NonNisbaIndef"){

        //masc indef
        adjectives=["Beautiful_ima","Big_ima","Black_ima","Cheap_ima","Clean_ima","Close_LC_ima","Close_MC_ima","Cold_ima","Delicious_ima","Dirty_ima","Expensive_ima","Far_ima","Fast_ima","Fat_ima","Good_ima","Hot_ima","Private_ima","Public_ima","Red_ima","Small_ima","Strong_LC_ima","Strong_MC_ima","Ugly_ima","Weak_ima","White_ima"]
        nouns=["Home_in","Head_in","Man_in","Wine_in","Chicken_in","Restaurant_in","Bath_in","Tshirt_in","Train_in","Toilet_in","Hotel_in","Gym_in","Street-road_in","Supermarket_in","Highway_in","Market_LC_in","Sea_in","Window_in","Market_MC_in","Door_in","Smallcup_in","Sandwich_in","Milk_in","Pen_MC_in","Pen_LC_in","Mobile_in","Juice_in","Notebook_in","Bread_in","Book_in","TV_in","Video_in","Tea_in","Phone_in","Glass_in","Shorts_in"]
        }
        else if(activityType=="NonNisbaDef"){
            
        //masc def
        adjectives=["Beautiful_dma","Big_dma","Black_dma","Cheap_dma","Clean_dma","Close_LC_dma","Close_MC_dma","Cold_dma","Delicious_dma","Dirty_dma","Expensive_dma","Far_dma","Fast_dma","Fat_dma","Good_dma","Hot_dma","Private_dma","Public_dma","Red_dma","Small_dma","Strong_LC_dma","Strong_MC_dma","Ugly_dma","Weak_dma","White_dma"]
            nouns=["Head_dn","Man_dn","Wine_dn","Chicken_dn","Restaurant_dn","Bath_dn","t-shirt_dn","Train_dn","Toilet_dn","Hotel_dn","Gym_dn","Street-road_dn","Supermarket_dn","Highway_dn","Market_LC_dn","Sea_dn","Window_dn","Market_MC_dn","Door_dn","Small_cup_dn","Sandwich_dn","Milk_dn","Pen_MC_dn","Pen_LC_dn","Mobile_dn","Juice_dn","Notebook_dn","Bread_dn","TV_dn","Video_dn","Tea_dn","Phone_dn","Glass_dn","Shorts_dn","Book_dn"]
        }
        else{
            //def/indef nisba
            if defOrIndefNisba==0{
            adjectives=["Algerian_dmm","American_dmm","Arab_dmm","Australian_dmm","Bahrani_dmm","British_dmm","Canadian_dmm","Chinese_dmm","Egyptian_dmm","Emirates_dmm","European_dmm","French_dmm","German_dmm","Iraqi_dmm","Israeli_dmm","Italian_dmm","Japanese_dmm","Jordanian_dmm","Korean_dmm","Kuwaiti_dmm","Lebanese_dmm","Libyan_dmm","Moroccan_dmm","Omani_dmm","Palestinian_dmm","Qatari_dmm","Russian_dmm","Saudi_dmm","Spanish_dmm","Sudanese_dmm","Syrian_dmm","Tunisian_dmm","Turkish_dmm","Yemeni_dmm"]
                nouns=["Man_dn","Wine_dn","Chicken_dn","Restaurant_dn","Bath_dn","t-shirt_dn","Train_dn","Toilet_dn","Hotel_dn","Gym_dn","Street-road_dn","Supermarket_dn","Highway_dn","Market_LC_dn","Window_dn","Market_MC_dn","Door_dn","Small_cup_dn","Sandwich_dn","Milk_dn","Pen_MC_dn","Pen_LC_dn","Mobile_dn","Juice_dn","Notebook_dn","Bread_dn","Book_dn","TV_dn","Video_dn","Tea_dn","Phone_dn","Glass_dn","Shorts_dn"]
            }
            else{
            adjectives=["Algerian_imm","American_imm","Arab_imm","Australian_imm","Bahrani_imm","British_imm","Canadian_imm","Chinese_imm","Egyptian_imm","Emirates_imm","European_imm","French_imm","German_imm","Iraqi_imm","Israeli_imm","Italian_imm","Japanese_imm","Jordanian_imm","Korean_imm","Kuwaiti_imm","Lebanese_imm","Libyan_imm","Moroccan_imm","Omani_imm","Palestinian_imm","Qatari_imm","Russian_imm","Saudi_imm","Spanish_imm","Sudanese_imm","Syrian_imm","Tunisian_imm","Turkish_imm","Yemeni_imm"]
                nouns=["Man_in","Wine_in","Chicken_in","Restaurant_in","Bath_in","Tshirt_in","Train_in","Toilet_in","Hotel_in","Gym_in","Street-road_in","Supermarket_in","Highway_in","Market_LC_in","Window_in","Market_MC_in","Door_in","Smallcup_in","Sandwich_in","Milk_in","Pen_MC_in","Pen_LC_in","Mobile_in","Juice_in","Notebook_in","Bread_in","Book_in","TV_in","Video_in","Tea_in","Phone_in","Glass_in","Shorts_in"]
            }
    

        }
        nounIndex=Int(arc4random_uniform(UInt32(nouns!.count)))
        if(activityType=="NonNisbaIndef" || activityType=="NonNisbaDef"){
            initialAdjectives=adjectives
            removeAdjectives(nouns![nounIndex].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"))
        }
        adjIndex=Int(arc4random_uniform(UInt32(adjectives!.count)))
        correctChoice=Int(arc4random_uniform(3))
        chooseIncorrects()
        nounAudio=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(nouns![nounIndex], ofType: "m4a")!), fileTypeHint: nil)
        adjAudio=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(adjectives![adjIndex], ofType: "m4a")!), fileTypeHint: nil)
        nounAudio.prepareToPlay()
        adjAudio.prepareToPlay()
        aOrAnFunc(adjectives![adjIndex])
        englishText![correctChoice].setTitle( aOrAn + adjectives![adjIndex].stringByReplacingOccurrencesOfString("_ima", withString: " ").stringByReplacingOccurrencesOfString("_dma", withString: " ").stringByReplacingOccurrencesOfString("_dmm", withString: " ").stringByReplacingOccurrencesOfString("_imm", withString: " ").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "") + nouns![nounIndex].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"), forState: .Normal)
        aOrAnFunc(adjectives![incorrectAdj1])
        englishText![(correctChoice+2)%3].setTitle( aOrAn + adjectives![incorrectAdj1].stringByReplacingOccurrencesOfString("_ima", withString: " ").stringByReplacingOccurrencesOfString("_dma", withString: " ").stringByReplacingOccurrencesOfString("_dmm", withString: " ").stringByReplacingOccurrencesOfString("_imm", withString: " ").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "") + nouns![incorrectNoun1].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"), forState: .Normal)
        aOrAnFunc(adjectives![incorrectAdj2])
        englishText![(correctChoice+4)%3].setTitle( aOrAn + adjectives![incorrectAdj2].stringByReplacingOccurrencesOfString("_ima", withString: " ").stringByReplacingOccurrencesOfString("_dma", withString: " ").stringByReplacingOccurrencesOfString("_dmm", withString: " ").stringByReplacingOccurrencesOfString("_imm", withString: " ").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "") + nouns![incorrectNoun2].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Smallcup", withString: "Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Road").stringByReplacingOccurrencesOfString("Tshirt", withString: "T-Shirt").stringByReplacingOccurrencesOfString("t-shirt", withString: "T-Shirt"), forState: .Normal)
        if(activityType=="NonNisbaIndef" || activityType=="NonNisbaDef"){
            adjectives=initialAdjectives
        }
    }
    
}