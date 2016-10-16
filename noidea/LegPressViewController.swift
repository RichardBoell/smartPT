//
//  LegPressViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class LegPressViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var kgText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        kgText.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        kgText.resignFirstResponder()
    }
    
    func textFieldShouldReturn(PhoneNumberTextField: UITextField) -> Bool {
        kgText.resignFirstResponder()
        return true
    }

}
