//
//  HighestLevelMenuViewController.swift
//  TestIsleem
//
//  Created by Cole Conte on 7/17/15.
//  Copyright (c) 2015 Bucknell University. All rights reserved.
//



import UIKit


class HighestLevelMenuViewController: UIViewController {
    
    var set=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "gradient-grid.png")!)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier=="Introduction"){
            let controller = (segue.destinationViewController as! Unit1ViewController)
            controller.activityNumber=4*set
        }
        else if(segue.identifier=="Matching"){
            let controller = (segue.destinationViewController as! Unit1ViewController)
            controller.activityNumber=1 + (4*set)
        }
        else if(segue.identifier=="Gender"){
            let controller = (segue.destinationViewController as! Unit1ViewController)
            controller.activityNumber=2 + (4*set)
        }
        else if(segue.identifier=="Part2Intro"){
            let controller = (segue.destinationViewController as! Unit1ViewController)
            controller.activityNumber=20
        }
        else if (segue.identifier=="Part2Review"){
            let controller = (segue.destinationViewController as! Unit1ViewController)
            controller.activityNumber=21
        }
        else if(segue.identifier=="NonNisbaIndefSegue"){
            let controller = (segue.destinationViewController as! Unit2Activity1ViewController)
            controller.activityType="NonNisbaIndef"
        }
        else if(segue.identifier=="NonNisbaDefSegue"){
            let controller = (segue.destinationViewController as! Unit2Activity1ViewController)
            controller.activityType="NonNisbaDef"
        }
        else if(segue.identifier=="NisbaSegue"){
            let controller = (segue.destinationViewController as! Unit2Activity1ViewController)
            controller.activityType="Nisba"
        }
        
        
    }

    
    
    
}

