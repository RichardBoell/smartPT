//
//  VitalsViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class VitalsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var AgeTextField: UITextField!
    @IBOutlet var WeightTextField: UITextField!
    @IBOutlet var HeightTextField: UITextField!
    @IBOutlet var GenderTextField: UITextField!
    @IBOutlet var TFreqTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        WeightTextField.delegate = self
        AgeTextField.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        WeightTextField.resignFirstResponder()
    }
    
    func dismissKeyboard1() {
        AgeTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(PhoneNumberTextField: UITextField) -> Bool {
        WeightTextField.resignFirstResponder()
        return true
    }
    

}
