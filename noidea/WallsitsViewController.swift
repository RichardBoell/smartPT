//
//  WallsitsViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/16/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class WallsitsViewController: UIViewController {

    
    @IBOutlet var NextViewController: UIButton!
    @IBOutlet var StartButtonText: RoundbuttonWhite!
    @IBAction func StartCountDown(_ sender: AnyObject) {
        
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
            self.NextViewController.sendActions(for: .touchUpInside)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
