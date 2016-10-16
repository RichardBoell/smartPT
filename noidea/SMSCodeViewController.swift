//
//  SMSCodeViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class SMSCodeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var EnterCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EnterCodeTextField.delegate = self

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func dismissKeyboard() {
        EnterCodeTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(PhoneNumberTextField: UITextField) -> Bool {
        EnterCodeTextField.resignFirstResponder()
        return true
    }

}
