//
//  BackSquatViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class BackSquatViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var kgTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kgTextField.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func dismissKeyboard() {
        kgTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(PhoneNumberTextField: UITextField) -> Bool {
        kgTextField.resignFirstResponder()
        return true
    }

}
