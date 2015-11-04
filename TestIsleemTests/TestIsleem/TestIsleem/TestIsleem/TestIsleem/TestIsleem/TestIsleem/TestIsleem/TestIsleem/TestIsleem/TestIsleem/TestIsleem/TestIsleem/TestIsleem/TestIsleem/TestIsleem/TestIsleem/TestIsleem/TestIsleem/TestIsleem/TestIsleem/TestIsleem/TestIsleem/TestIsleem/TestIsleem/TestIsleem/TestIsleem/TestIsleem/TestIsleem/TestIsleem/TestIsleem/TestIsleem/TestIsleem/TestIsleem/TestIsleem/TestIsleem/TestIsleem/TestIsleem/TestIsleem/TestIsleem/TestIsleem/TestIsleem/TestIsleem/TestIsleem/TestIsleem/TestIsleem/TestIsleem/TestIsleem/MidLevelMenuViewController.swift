//
//  MidLevelMenuViewController.swift
//  TestIsleem
//
//  Created by Cole Conte on 7/17/15.
//  Copyright (c) 2015 Bucknell University. All rights reserved.
//

import UIKit


class MidLevelMenuViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier != "Part2"){
            let controller = (segue.destinationViewController as! HighestLevelMenuViewController)
            controller.set = Int(segue.identifier!)!-1
        }
    }
    
    
    
}

