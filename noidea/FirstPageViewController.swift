//
//  FirstPageViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/16/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {

    var color = UIColor.init(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
    
    var color2 = UIColor.init(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.0)
    
    
    
    @IBOutlet var layerButton: TransitionButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 2.0, animations: { () -> Void in
            self.layerButton.layer.backgroundColor  = self.color2.cgColor
        })
        
        //layerButton.layer.backgroundColor = self.color.cgColor
        
        /*let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.layerButton.layer.backgroundColor = self.color.cgColor
        }*/
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
