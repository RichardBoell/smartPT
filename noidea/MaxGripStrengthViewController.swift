//
//  MaxGripStrengthViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class MaxGripStrengthViewController: UIViewController {

    //@IBOutlet var Startbutton: RoundButton!
    
    //@IBOutlet var nextViewController: UIButton!
    
    @IBOutlet var nextViewController: UIButton!
    
    @IBAction func StartCountdown(_ sender: AnyObject) {
        
        self.StartButtonText.setTitle("3", for: UIControlState.normal)
        
        let when = DispatchTime.now() + 1 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.StartButtonText.setTitle("2", for: UIControlState.normal)
        }
        
        let when2 = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when2) {
            self.StartButtonText.setTitle("1", for: UIControlState.normal)
        }
        
        let when3 = DispatchTime.now() + 3 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when3) {
            self.StartButtonText.setTitle("go!", for: UIControlState.normal)
            self.nextViewController.sendActions(for: .touchUpInside)
        }
    }
    
    @IBOutlet var StartButtonText: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*var time: Double = 4

    var timerseconds: Int {
        return Int(round(time.truncatingRemainder(dividingBy: 60)))
    }
    var timerminutes: Int {
        return Int((time - Double(timerseconds))/60)
    }
    var timer = Timer()
    
    @IBAction func startTimer(_ sender: AnyObject) {
        Startbutton.setTitle("3", for: UIControlState.normal)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(MaxGripStrengthViewController.updateTimer)), userInfo: nil, repeats: time > 2)
    }
    
    
    func updateTimer() {
        if time >= 2 {
            time -= 1
            Startbutton.setTitle("\(timerseconds)", for: UIControlState.normal)
        } else {
            time = 0
            nextViewController.sendActions(for: .touchUpInside)
            //nextViewController.isEnabled = false
        }
    }*/
    
    
    

}
