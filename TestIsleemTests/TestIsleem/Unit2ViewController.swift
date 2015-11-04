//
//  Unit2ViewController.swift
//  TestIsleem
//
//  Created by Cole Conte on 7/20/15.
//  Copyright (c) 2015 Bucknell University. All rights reserved.
//



import UIKit
import AVFoundation
import Darwin
import MediaPlayer

class Unit2ViewController: UIViewController {
    
    var moviePlayer : MPMoviePlayerController?
    var gender: AnyObject = "Male"
    var enteredGender: AnyObject = false
    
    
    func playVideo() {
        //fix this
        let path = NSBundle.mainBundle().pathForResource("Unit2Intro", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = CGRectMake(174,154,600,428)
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
            while(player.playbackState != MPMoviePlaybackState.Stopped){
                //do nothing
                print("Hey")
            }
            player.view.frame=CGRectMake(0,0,0,0)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //loadGenderData()
        if(enteredGender as! Bool==false){
            gender="Male"
            enteredGender=true
            saveGenderData()
        }
        playVideo()
    }
    
    /*func loadGenderData() {
        // getting path to Data.plist
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths[0] as! String
        let path = documentsDirectory.stringByAppendingPathComponent("Data.plist")
        let fileManager = NSFileManager.defaultManager()
        //check if file exists
        if(!fileManager.fileExistsAtPath(path)) {
            // If it doesn't, copy it from the default file in the Bundle
            if let bundlePath = NSBundle.mainBundle().pathForResource("Data", ofType: "plist") {
                let resultDictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                print("Bundle Data.plist file is --> \(resultDictionary?.description)")
                try! fileManager.copyItemAtPath(bundlePath, toPath: path)
                print("copy")
            } else {
                print("Data.plist not found. Please, make sure it is part of the bundle.")
            }
        } else {
            print("Data.plist already exits at path.")
            // use this to delete file from documents directory
            //fileManager.removeItemAtPath(path, error: nil)
        }
        let resultDictionary = NSMutableDictionary(contentsOfFile: path)
        println("Loaded GameData.plist file is --> \(resultDictionary?.description)")
        var myDict = NSDictionary(contentsOfFile: path)
        if let dict = myDict {
            //loading values
            //enteredGender = dict.objectForKey("EnteredGender")!
            gender = dict.objectForKey("Gender")!
        } else {
            print("WARNING: Couldn't create dictionary from Data.plist! Default values will be used!")
        }
    }*/
    
    func saveGenderData() {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("GameData.plist")
        let dict: NSMutableDictionary = ["XInitializerItem": "DoNotEverChangeMe"]
        //saving values
        dict.setObject(enteredGender, forKey: "Entered Gender")
        dict.setObject(gender, forKey: "Gender")
        //...
        //writing to GameData.plist
        dict.writeToFile(path, atomically: false)
        let resultDictionary = NSMutableDictionary(contentsOfFile: path)
        print("Saved GameData.plist file is --> \(resultDictionary?.description)")
    }
    
    
    
    
}


