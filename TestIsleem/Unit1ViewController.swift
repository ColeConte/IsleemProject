//
//  Unit1ViewController.swift
//  TestIsleem
//
//  Created by Cole Conte on 7/10/15.
//  Copyright (c) 2015 Bucknell University. All rights reserved.
//

import UIKit
import AVFoundation
import Darwin

class Unit1ViewController: UIViewController {

        var audioPlayer = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("University_in", ofType: "m4a")!), fileTypeHint: nil)
        var goodJob = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("jameel", ofType: "m4a")!), fileTypeHint: nil)
        var tryAgain = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("kamaan marra", ofType: "m4a")!), fileTypeHint: nil)
        var notQuite = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Arabic_NOT QUITE", ofType: "m4a")!), fileTypeHint: nil)
        var activityNumber=0
        var index=0
        var englishWords: [String]?
        var arabicWords: [String]?
        var arabicSounds: [String]?
        var pictures: [String]?
        var correctChoiceActivity1=0
        var correctChoiceActivity2=0
        

    @IBOutlet weak var maleFemaleButton: UISegmentedControl!
    @IBOutlet weak var arabicTextIntro: UIButton!
    @IBOutlet weak var activityOneButtonOne: UIButton!
    @IBOutlet weak var activityOneButtonTwo: UIButton!
    @IBOutlet weak var activityOneButtonThree: UIButton!
    @IBOutlet weak var pictureIntro: UIImageView!
    @IBOutlet weak var englishTextIntro: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var revealIntroButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var elStressedConsonant: UISegmentedControl!
    @IBOutlet weak var withWithoutEl: UISegmentedControl!
    
    
    @IBAction func withWithoutElSelected(sender: AnyObject) {
        //first 59 definite, next 59 indef
        if ((withWithoutEl.selectedSegmentIndex==0 && index<59)||(withWithoutEl.selectedSegmentIndex==1 && index>=59)){
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
        }
        else{
            let alert = UIAlertController(title: "Incorrect", message: "Not Quite!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            notQuite.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
        }
        self.next(self)
    }
    @IBAction func reveal(sender: AnyObject) {
        if (revealIntroButton.currentTitle=="Reveal"){
            pictureIntro.hidden=true
            arabicTextIntro.hidden=false
            revealIntroButton.setImage(UIImage(named: "hidebluepill.png"),forState: .Normal)
            revealIntroButton.setTitle("Hide", forState:.Normal)
        }
        else{
            if(activityNumber/4==0){
                pictureIntro.hidden=false
            }
            arabicTextIntro.hidden=true
            revealIntroButton.setImage(UIImage(named: "revealbluepill.png"),forState: .Normal)
            revealIntroButton.setTitle("Reveal", forState:.Normal)
        }

    }
    @IBAction func playArabicText(sender: AnyObject) {
        audioPlayer.play()
        while (audioPlayer.playing) { //do nothing
        }
    }

    @IBAction func selectedElOrStressed(sender: AnyObject) {
        if ((elStressedConsonant.selectedSegmentIndex==0 && index<35)||(elStressedConsonant.selectedSegmentIndex==1 && index>=35)){
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
        }
        else{
            let alert = UIAlertController(title: "Incorrect", message: "Not Quite!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            notQuite.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
        }
        self.next(self)
    }

    @IBAction func selectedMaleOrFemale(sender: AnyObject) {
        if maleFemaleButton.selectedSegmentIndex==correctChoiceActivity2 {
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
        }
        else{
            let alert = UIAlertController(title: "Incorrect", message: "Not Quite!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            notQuite.play()
            // Delay the dismissal by 5 seconds
            let delay = 3.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        self.next(self)
        activity2CorrectAnswer()
    }

    @IBAction func activityOneChoiceOne(sender: AnyObject) {
        if correctChoiceActivity1==0{
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
            self.next(self)
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

    @IBAction func activityOneChoiceTwo(sender: AnyObject) {
        if correctChoiceActivity1==1{
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
            self.next(self)
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

    @IBAction func activityOneChoiceThree(sender: AnyObject) {
        if correctChoiceActivity1==2{
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
            self.next(self)
        }
        else{
            let alert = UIAlertController(title: "Incorrect", message: "Try again!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            tryAgain.play()
            // Delay the dismissal by 5 seconds
            let delay = 5.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }

    @IBAction func play(sender: AnyObject) {
        audioPlayer.play()
        while (audioPlayer.playing) { //do nothing
        }
    }

    @IBAction func next(sender: AnyObject) {
        if(activityNumber%4==0 && activityNumber<20){
        if(index+1 < (arabicWords?.count)){
            index++
        }
        else{
            index=0
        }
        }
        else{
            index=Int(arc4random_uniform(UInt32(arabicSounds!.count)))
        }
        audioPlayer=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(arabicSounds![index], ofType: "m4a")!), fileTypeHint: nil)
        correctChoiceActivity1=Int(arc4random_uniform(3))
        if(activityNumber%4==0 && activityNumber != 20){
            arabicTextIntro.hidden=true
            revealIntroButton.setTitle("Reveal", forState: .Normal)
            if(activityNumber/4==0){
                pictureIntro.hidden=false
            }
        }
        if (activityNumber==21){
            englishTextIntro!.text = arabicSounds![index].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Big_cup", withString: "Big Cup").stringByReplacingOccurrencesOfString("Smallcup", withString: "Small Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Small Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Street").stringByReplacingOccurrencesOfString("State-political", withString: "State").stringByReplacingOccurrencesOfString("Bigcup", withString: "Big Cup")

        }
        elStressedConsonant.selectedSegmentIndex=UISegmentedControlNoSegment
        withWithoutEl.selectedSegmentIndex=UISegmentedControlNoSegment
        self.configureView()

    }
        
        var detailItem: AnyObject? {
            didSet {
                // Update the view.
                self.configureView()
            }
        }
        
        func unit1Part2Handler(alert: UIAlertAction!) {
            let exampleDNs = ["University_dn","School_dn","Home_dn","City_dn","State_dn","Supermarket_dn","Neighborhood_dn","Hotel_dn","Gym_dn","Shorts_dn","Building_dn"]
            let exampleWords = ["The University","The School","The Home","The City", "The State","The Supermarket","The Neighborhood","The Hotel","The Gym","The Shorts","The Building"]
            var curWord=0
            while(curWord<exampleWords.count){
                englishTextIntro.text=exampleWords[curWord]
                audioPlayer=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(exampleDNs[curWord], ofType: "m4a")!), fileTypeHint: nil)
                audioPlayer.play()
                while(audioPlayer.playing){
                    //do nothing
                }
                curWord++
            }

            let alert2 = UIAlertController(title: "Grammar Tip", message: "You’ve probably noticed that the 'el' in Spoken Arabic is pronounced as 'el' in some cases such as 'the school' or 'the home,' while in other cases such as 'the supermarket,' the 'el' is replaced by stressing the first consonant of the noun like in 'the market –es-suuq,' 'the shorts – esh-shourt' and 'the supermarket es-supermarket.'  Remember that the first consonant of the noun determines whether to pronounce the 'el' sound or to stress the first consonant. This is a short list of the consonants that 'el' is not pronounced: ش ث ت ض د ص س and others that are close to these sounds.", preferredStyle: UIAlertControllerStyle.Alert)
            alert2.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
            // Delay the dismissal by 5 seconds
            let delay = 15.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                alert2.dismissViewControllerAnimated(true, completion: nil)
            })
            self.presentViewController(alert2, animated: true, completion: nil)
        }
        
        func activity2CorrectAnswer(){
            switch (activityNumber/4){
            case 0:
                correctChoiceActivity2=index%2
                break;
            case 1:
                if(index<7){
                    correctChoiceActivity2=1
                }
                else{
                    correctChoiceActivity2=0
                }
                break;
            case 2:
                if(index<10){
                    correctChoiceActivity2=0
                }
                else{
                    correctChoiceActivity2=1
                }
            case 3:
                if(index<9){
                    correctChoiceActivity2=0
                }
                else{
                    correctChoiceActivity2=1
                }
            case 4:
                if(index<7){
                    correctChoiceActivity2=1
                }
                else{
                    correctChoiceActivity2=0
                }
                break;
            default:
                break;
            }
            
        }
        
        func configureView() {
            // Update the user interface for the detail item.
            if(activityNumber<20){
                arabicTextIntro.setBackgroundImage(UIImage(named: arabicWords![index]),forState:.Normal)
                pictureIntro.image=UIImage(named: pictures![index])
                englishTextIntro.text=englishWords![index]
                maleFemaleButton.selectedSegmentIndex=UISegmentedControlNoSegment
                let moreOrLessCommon = Int(arc4random_uniform(UInt32(2)))
                switch moreOrLessCommon{
                case 0:
                    //choose more common pronunciation
                    switch(activityNumber/4){
                    case 0:
                        arabicSounds![2]="Market_MC_in"
                        break;
                    case 2:
                        arabicSounds![1]="Coffee_MC_in"
                        break;
                    case 3:
                        arabicSounds![4]="Pen_MC_in"
                        break;
                    default:
                        break;
                    }
                    break;
                case 1:
                    //chooose less common pronunciation
                    switch(activityNumber/4){
                    case 0:
                        arabicSounds![2]="Market_LC_in"
                        break;
                    case 2:
                        arabicSounds![1]="Coffee_LC_in"
                        break;
                    case 3:
                        arabicSounds![4]="Pen_LC_in"
                        break;
                    default:
                        break;
                    }
                    break;
                default:
                    break;
                }
                
                switch correctChoiceActivity1{
                case 0:
                    let choiceImage=UIImage(named: pictures![index])
                    activityOneButtonOne.setBackgroundImage(choiceImage, forState: .Normal)
                    activityOneButtonTwo.setBackgroundImage(UIImage(named: pictures![(index+3)%6]), forState: .Normal)
                    activityOneButtonThree.setBackgroundImage(UIImage(named: pictures![(index+2)%6]), forState: .Normal)
                    break;
                case 1:
                    let choiceImage=UIImage(named: pictures![index])
                    activityOneButtonTwo.setBackgroundImage(choiceImage, forState: .Normal)
                    activityOneButtonOne.setBackgroundImage(UIImage(named: pictures![(index+3)%6]), forState: .Normal)
                    activityOneButtonThree.setBackgroundImage(UIImage(named: pictures![(index+2)%6]), forState: .Normal)
                    break;
                case 2:
                    let choiceImage=UIImage(named: pictures![index])
                    activityOneButtonThree.setBackgroundImage(choiceImage, forState: .Normal)
                    activityOneButtonTwo.setBackgroundImage(UIImage(named: pictures![(index+3)%6]), forState: .Normal)
                    activityOneButtonOne.setBackgroundImage(UIImage(named: pictures![(index+2)%6]), forState: .Normal)
                    
                    break;
                default:
                    break;
                }
            }
            else if (activityNumber==20){
                arabicTextIntro.setBackgroundImage(UIImage(named: arabicWords![index]),forState:.Normal)
                let moreOrLessCommon = Int(arc4random_uniform(UInt32(2)))
                switch moreOrLessCommon{
                case 0:
                    //choose more common pronunciation
                    arabicSounds![14]="Coffee_MC_dn"
                    arabicSounds![26]="Pen_MC_dn"
                    arabicSounds![34]="Market_MC_dn"

                    break;
                case 1:
                    //chooose less common pronunciation
                    arabicSounds![14]="Coffee_LC_dn"
                    arabicSounds![26]="Pen_LC_dn"
                    arabicSounds![34]="Market_LC_dn"

                    break;
                default:
                    break;
                }


            }
            else if (activityNumber==21){
                arabicTextIntro.setBackgroundImage(UIImage(named: arabicWords![index]),forState:.Normal)
                let moreOrLessCommon = Int(arc4random_uniform(UInt32(2)))
                switch moreOrLessCommon{
                case 0:
                    //choose more common pronunciation
                    arabicSounds![14]="Coffee_MC_dn"
                    arabicSounds![26]="Pen_MC_dn"
                    arabicSounds![34]="Market_MC_dn"
                    arabicSounds![61]="Market_MC_in"
                    arabicSounds![94]="Coffee_MC_in"
                    arabicSounds![99]="Pen_MC_in"
                    break;
                case 1:
                    //chooose less common pronunciation
                    arabicSounds![14]="Coffee_LC_dn"
                    arabicSounds![26]="Pen_LC_dn"
                    arabicSounds![34]="Market_LC_dn"
                    arabicSounds![61]="Market_LC_in"
                    arabicSounds![94]="Coffee_LC_in"
                    arabicSounds![99]="Pen_LC_in"
                    break;
                default:
                    break;
                }
                
                
            }

        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            switch (activityNumber/4){
            case 0:
                englishWords=["Home","University","Market","School","Hotel","City","Gym","State","Supermarket","Neighborhood","Shorts","Building"]
                arabicWords=["home_in.png","university_in.png","market_in.png","school_in.png","hotel_in.png","city_in.png","gym_in.png","state_in.png","supermarket_in.png","neighborhood_in.png","shorts_in.png","building_in.png"]
                pictures=["home.png","university.png","market.png","school.png","hotel.png","city.png","gym.png","stateUS.png","supermarket.png","neighborhood.png","shorts.png","building.png"]
                arabicSounds=["Home_in","University_in","Market_MC_in","School_in","Hotel_in","City_in","Gym_in","State_in","Supermarket_in","Neighborhood_in","Shorts_in","Building_in"]
                
                break;
            case 1:

                englishWords=["Cinema","Town/Country","Station","Car","Taxi","Airplane","Room","Bus","Train","T-Shirt","Bath","Toilet"]
                arabicWords=["cinema_in.png","town-country_in.png","station_in.png","car_in.png","taxi_in.png","airplane_in.png","room_in.png","bus_in.png","train_in.png","t-shirt_in.png","bath_in.png","toilet_in.png"]
                pictures=["cinema.png","country-town.png","station.png","car.png","taxi.png","airplane.png","room.png","bus.png","train.png","t-shirt.png","bath.png","toilet.png"]
            arabicSounds=["Cinema_in","Country_in","Station_in","Car_in","Taxi_in","Airplane_in","Room_in","Bus_in","Train_in","Tshirt_in","Bath_in","Toilet_in"]
                pictureIntro.hidden=true
                break;
                
            case 2:
                englishWords=["Street/Road","Highway","Sea","Door","Window","Bread","Sandwich","Juice","Tea","Milk","Water","Coffee"]
                arabicSounds=["Street-road_in","Highway_in","Sea_in","Door_in","Window_in","Bread_in","Sandwich_in","Juice_in","Tea_in","Milk_in","Water_in","Coffee_MC_in"]
                arabicWords=["street-road_in.png","highway_in.png","sea_in.png","door_in.png","window_in.png","bread_in.png","sandwich_in.png","juice_in.png","tea_in.png","milk_in.png","water_in.png","coffee_in.png"]
            pictures=["street.png","highway.png","sea.png","door.png","window.png","bread.png","sandwich.png","juice.png","tea.png","milk.png","water-glass.png","coffee.png"]
                pictureIntro.hidden=true
                break;
                
            case 3:
                englishWords=["Small Cup","Glass","Book","Notebook","Pen","Mobile","Phone","TV","Video","Big Cup","Picture"]
                arabicSounds=["Smallcup_in","Glass_in","Book_in","Notebook_in","Pen_MC_in","Mobile_in","Phone_in","TV_in","Video_in","Bigcup_in","Picture_in"]
                arabicWords=["small-cup_in.png","glass_in.png","book_in.png","notebook_in.png","pen_in.png","mobile_in.png","telephone_in.png","tv_in.png","video_in.png","big-cup_in.png","picture_in.png"]
                
                pictures=["small_cup.png","glass.png","book.png","notebook.png","pen.png","mobile.png","phone.png","tv.png","video.png","bigcup.png","picture.png"]
                pictureIntro.hidden=true
                break;
                
            case 4:
                englishWords=["State (as a political authority)","Meat","Salad","Beer","Woman","Hand","Leg","Restaurant","Chicken","Wine","Man","Head"]
                arabicSounds=["State_in","Meat_in","Salad_in","Beer_in","Woman_in","Hand_in","Leg_in","Restaurant_in","Chicken_in","Wine_in","Man_in","Head_in"]
                
                arabicWords=["state-political_in.png","meat_in.png","salad_in.png","beer_in.png","woman_in.png","hand_in.png","leg_in.png","restaurant_in.png","chicken_in.png","wine_in.png","man_in.png","head_in.png"]                
                pictures=["state.png","meat.png","salad.png","beer.png","woman.png","hand.png","leg.png","restaurant.png","chicken.png","wine.png","man.png","head.png"]
                
                
                pictureIntro.hidden=true
                break;
                
            default:
                break;
            }
            switch (activityNumber){
            case 0,4,8,12,16:
                withWithoutEl.hidden=true
                activityOneButtonOne.hidden=true
                activityOneButtonTwo.hidden=true
                activityOneButtonThree.hidden=true
                arabicTextIntro.hidden=true
                maleFemaleButton.hidden=true
                elStressedConsonant.hidden=true
                sleep(1)
                audioPlayer.play()
                break;
            case 1,5,9,13,17:
                let alert = UIAlertController(title: "Instructions", message: "Match the given Arabic word with the correct picture. Click the Arabic text to hear the word.", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
                // Delay the dismissal by 5 seconds
                let delay = 4.0 * Double(NSEC_PER_SEC)
                let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
                dispatch_after(time, dispatch_get_main_queue(), {
                    alert.dismissViewControllerAnimated(true, completion: nil)
                })
                self.presentViewController(alert, animated: true, completion: nil)
                withWithoutEl.hidden=true
                pictureIntro.hidden=true
                englishTextIntro.hidden=true
                revealIntroButton.hidden=true
                pictureIntro.hidden=true
                correctChoiceActivity1=Int(arc4random_uniform(3))
                maleFemaleButton.hidden=true
                playButton.hidden=true
                elStressedConsonant.hidden=true
                sleep(1)
                audioPlayer.play()
                break;
            case 2,6,10,14,18:
                withWithoutEl.hidden=true
                activityOneButtonOne.hidden=true
                activityOneButtonTwo.hidden=true
                activityOneButtonThree.hidden=true
                pictureIntro.hidden=true
                englishTextIntro.hidden=true
                revealIntroButton.hidden=true
                playButton.hidden=true
                elStressedConsonant.hidden=true
                maleFemaleButton.selectedSegmentIndex=UISegmentedControlNoSegment
                let alert = UIAlertController(title: "Grammar Tip", message: "Arabic nouns carry gender features; each noun is either masculine or feminine. In general, nouns that end with 'ah' or 'eh' sounds are most likely to be feminine nouns. In this activity, practice identifying gender by selecting the gender you think is associated with the given Arabic word. Click the word to hear it.", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
                // Delay the dismissal by 5 seconds
                let delay = 7.0 * Double(NSEC_PER_SEC)
                let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
                dispatch_after(time, dispatch_get_main_queue(), {
                    alert.dismissViewControllerAnimated(true, completion: nil)
                })
                self.presentViewController(alert, animated: true, completion: nil)
                sleep(1)
                audioPlayer.play()
                break;
            case 20:
                let alert = UIAlertController(title: "Instructions", message: "Identify whether the Arabic word presented above has 'el' or a stressed consonant. Click the word to hear it.", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
                // Delay the dismissal by 5 seconds
                let delay = 4.0 * Double(NSEC_PER_SEC)
                let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
                dispatch_after(time, dispatch_get_main_queue(), {
                    alert.dismissViewControllerAnimated(true, completion: nil)
                })
                self.presentViewController(alert, animated: true, completion: nil)
                arabicSounds=["City_dn","Gym_dn","Home_dn","Hotel_dn","Neighborhood_dn","State_dn","University_dn","Building_dn","School_dn","Bath_dn","Bus_dn","Room_dn","Station_dn","Bread_dn","Coffee_MC_dn","Door_dn","Highway_dn","Juice_dn","Milk_dn","Sea_dn","Water_dn","Big_cup_dn","Glass_dn","Mobile_dn","Small_cup_dn","Video_dn","Pen_MC_dn","Beer_dn","Hand_dn","Head_dn","Leg_dn","Meat_dn","Restaurant_dn","Woman_dn","Town_dn","Market_MC_dn","Supermarket_dn","Shorts_dn","Cinema_dn","Airplane_dn","Car_dn","t-shirt_dn","Train_dn","Toilet_dn","Taxi_dn","Sandwich_dn","Street-road_dn","Tea_dn","Window_dn","Notebook_dn","Picture_dn","TV_dn","Phone_dn","Chicken_dn","Man_dn","Salad_dn","State-political_dn","Wine_dn","Book_dn"] //missing some
                arabicWords=["theCity_d.png","theGym_d.png","theHome_d.png","theHotel_d.png","theNeighborhood_d.png","theState_d.png","theUniversity_d.png","theBuilding_d.png","theSchool_d.png","theBath_d.png","theBus_d.png","theRoom_d.png","theStation_d.png","theBread_d.png","theCoffee_d.png","theDoor_d.png","theHighway_d.png","theJuice_d.png","theMilk_d.png","theSea_d.png","theWater_d.png","theBigCup_d.png","theGlass_d.png","theMobile_d.png","theSmallCup_d.png","theVideo_d.png","thePen_d.png","theBeer_d.png","theHand_d.png","theHead_d.png","theLeg_d.png","theMeat_d.png","theRestaurant_d.png","theWoman_d.png","theTown_d.png","theMarket_d.png","theSupermarket_d.png","theShorts_d.png","theCinema_d.png","theAirplane_d.png","theCar_d.png","theTshirt_d.png","theTrain_d.png","theToilet_d.png","theTaxi_d.png","theSandwich_d.png","theStreet-Road_d.png","theTea_d.png","theWindow_d.png","theNotebook_d.png","thePicture_d.png","theTV_d.png","thePhone_d.png","theChicken_d.png","theMan_d.png","theSalad_d.png","theState_political_d.png","theWine_d.png","theBook_d.png"]
                index=Int(arc4random_uniform(UInt32(arabicSounds!.count)))
                audioPlayer=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(arabicSounds![index], ofType: "m4a")!), fileTypeHint: nil)
                activityOneButtonOne.hidden=true
                activityOneButtonTwo.hidden=true
                activityOneButtonThree.hidden=true
                pictureIntro.hidden=true
                englishTextIntro.hidden=true
                revealIntroButton.hidden=true
                playButton.hidden=true
                maleFemaleButton.hidden=true
                withWithoutEl.hidden=true
                elStressedConsonant.hidden=true
                englishTextIntro.hidden=true
                arabicTextIntro.hidden=false
                elStressedConsonant.hidden=false
                elStressedConsonant.selectedSegmentIndex=UISegmentedControlNoSegment
                break;
            case 21:
                let alert = UIAlertController(title: "Instructions", message: "Identify whether the Arabic word presented above is definite (has 'el' or a stressed consonant) or indefinite. Click the word to hear it.", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
                // Delay the dismissal by 5 seconds
                let delay = 5.0 * Double(NSEC_PER_SEC)
                let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
                dispatch_after(time, dispatch_get_main_queue(), {
                    alert.dismissViewControllerAnimated(true, completion: nil)
                })
                self.presentViewController(alert, animated: true, completion: nil)

               
                arabicSounds=["City_dn","Gym_dn","Home_dn","Hotel_dn","Neighborhood_dn","State_dn","University_dn","Building_dn","School_dn","Bath_dn","Bus_dn","Room_dn","Station_dn","Bread_dn","Coffee_MC_dn","Door_dn","Highway_dn","Juice_dn","Milk_dn","Sea_dn","Water_dn","Big_cup_dn","Glass_dn","Mobile_dn","Small_cup_dn","Video_dn","Pen_MC_dn","Beer_dn","Hand_dn","Head_dn","Leg_dn","Meat_dn","Restaurant_dn","Woman_dn","Town_dn","Market_MC_dn","Supermarket_dn","Shorts_dn","Cinema_dn","Airplane_dn","Car_dn","t-shirt_dn","Train_dn","Toilet_dn","Taxi_dn","Sandwich_dn","Street-road_dn","Tea_dn","Window_dn","Notebook_dn","Picture_dn","TV_dn","Phone_dn","Chicken_dn","Man_dn","Salad_dn","State-political_dn","Wine_dn","Book_dn","University_in","Home_in","Market_MC_in","School_in","Hotel_in","City_in","Gym_in","State_in","Supermarket_in","Neighborhood_in","Shorts_in","Building_in","Cinema_in","Country_in","Station_in","Car_in","Taxi_in","Airplane_in","Room_in","Bus_in","Train_in","Tshirt_in","Bath_in","Toilet_in","Street-road_in","Highway_in","Sea_in","Door_in","Window_in","Bread_in","Sandwich_in","Juice_in","Tea_in","Milk_in","Water_in","Coffee_MC_in","Smallcup_in","Glass_in","Book_in","Notebook_in","Pen_MC_in","Mobile_in","Phone_in","TV_in","Video_in","Bigcup_in","Picture_in","State_in","Meat_in","Salad_in","Beer_in","Woman_in","Hand_in","Leg_in","Restaurant_in","Chicken_in","Wine_in","Man_in","Head_in"] //missing some?
                arabicWords=["theCity_d.png","theGym_d.png","theHome_d.png","theHotel_d.png","theNeighborhood_d.png","theState_d.png","theUniversity_d.png","theBuilding_d.png","theSchool_d.png","theBath_d.png","theBus_d.png","theRoom_d.png","theStation_d.png","theBread_d.png","theCoffee_d.png","theDoor_d.png","theHighway_d.png","theJuice_d.png","theMilk_d.png","theSea_d.png","theWater_d.png","theBigCup_d.png","theGlass_d.png","theMobile_d.png","theSmallCup_d.png","theVideo_d.png","thePen_d.png","theBeer_d.png","theHand_d.png","theHead_d.png","theLeg_d.png","theMeat_d.png","theRestaurant_d.png","theWoman_d.png","theTown_d.png","theMarket_d.png","theSupermarket_d.png","theShorts_d.png","theCinema_d.png","theAirplane_d.png","theCar_d.png","theTshirt_d.png","theTrain_d.png","theToilet_d.png","theTaxi_d.png","theSandwich_d.png","theStreet-Road_d.png","theTea_d.png","theWindow_d.png","theNotebook_d.png","thePicture_d.png","theTV_d.png","thePhone_d.png","theChicken_d.png","theMan_d.png","theSalad_d.png","theState_political_d.png","theWine_d.png","theBook_d.png","home_in.png","university_in.png","market_in.png","school_in.png","hotel_in.png","city_in.png","gym_in.png","state_in.png","supermarket_in.png","neighborhood_in.png","shorts_in.png","building_in.png","cinema_in.png","town-country_in.png","station_in.png","car_in.png","taxi_in.png","airplane_in.png","room_in.png","bus_in.png","train_in.png","t-shirt_in.png","bath_in.png","toilet_in.png","street-road_in.png","highway_in.png","sea_in.png","door_in.png","window_in.png","bread_in.png","sandwich_in.png","juice_in.png","tea_in.png","milk_in.png","water_in.png","coffee_in.png","small-cup_in.png","glass_in.png","book_in.png","notebook_in.png","pen_in.png","mobile_in.png","phone_in.png","tv_in.png","video_in.png","big-cup_in.png","picture_in.png","state-political_in.png","meat_in.png","salad_in.png","beer_in.png","woman_in.png","hand_in.png","leg_in.png","restaurant_in.png","chicken_in.png","wine_in.png","man_in.png","head_in.png"]
                index=Int(arc4random_uniform(UInt32(arabicSounds!.count)))
                englishTextIntro!.text = arabicSounds![index].stringByReplacingOccurrencesOfString("_in", withString: "").stringByReplacingOccurrencesOfString("_dn", withString: "").stringByReplacingOccurrencesOfString("_MC", withString: "" ).stringByReplacingOccurrencesOfString("_LC", withString: "").stringByReplacingOccurrencesOfString("Big_cup", withString: "Big Cup").stringByReplacingOccurrencesOfString("Smallcup", withString: "Small Cup").stringByReplacingOccurrencesOfString("Small_cup", withString: "Small Cup").stringByReplacingOccurrencesOfString("Street-road", withString: "Street").stringByReplacingOccurrencesOfString("State-political", withString: "State").stringByReplacingOccurrencesOfString("Bigcup", withString: "Big Cup")
                audioPlayer=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(arabicSounds![index], ofType: "m4a")!), fileTypeHint: nil)
                activityOneButtonOne.hidden=true
                activityOneButtonTwo.hidden=true
                activityOneButtonThree.hidden=true
                pictureIntro.hidden=true
                arabicTextIntro.hidden=true
                revealIntroButton.hidden=true
                maleFemaleButton.hidden=true
                elStressedConsonant.hidden=true
                withWithoutEl.selectedSegmentIndex=UISegmentedControlNoSegment
                    break;
            default:
                    break;
            }
            
            
            // Do any additional setup after loading the view, typically from a nib.
            self.configureView()
            if(activityNumber<20){
                audioPlayer=try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(arabicSounds![index], ofType: "m4a")!), fileTypeHint: nil)
                audioPlayer.prepareToPlay()
            }
            
            
        }
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
    
    


}

