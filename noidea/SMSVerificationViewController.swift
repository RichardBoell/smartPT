//
//  SMSVerificationViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class SMSVerificationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var PhoneNumberTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PhoneNumberTextField.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        PhoneNumberTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(PhoneNumberTextField: UITextField) -> Bool {
        PhoneNumberTextField.resignFirstResponder()
        return true
    }
    

}
