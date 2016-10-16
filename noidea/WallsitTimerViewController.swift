//
//  WallsitTimerViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/16/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class WallsitTimerViewController: UIViewController {

    @IBOutlet var timeTextField: UILabel!
    
    @IBAction func stopButton(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    var time = 0
    var timer = Timer()
    
    var minutes = 0
    var seconds = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WallsitTimerViewController.action), userInfo: nil, repeats: true)
        
    }

    func action() {
        
        time += 1
        minutes = (time % 3600) / 60
        seconds = (time % 3600) % 60
        let text = String(format:"%02d:%02d", minutes, seconds)
        timeTextField.text = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
