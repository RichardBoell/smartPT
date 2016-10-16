//
//  AccountCreationViewController.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class AccountCreationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var AccountCreationUser: UITextField!
    
    @IBOutlet var AccountCreationPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        AccountCreationPassword.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboardpassword")))
        
        //Backgroundcolor
        //let greyColor = UIColor(red: 62/255.0, green: 71/255.0, blue: 79/255.0, alpha: 1.0)
        //view.backgroundColor = greyColor
        
        //draw rectangle
        /*
        let k = Draw(frame: CGRect(
            origin: CGPoint(x: 50, y: 50),
            size: CGSize(width: 100, height: 100)))
        
        self.view.addSubview(k)*/
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

    func dismissKeyboard() {
        AccountCreationUser.resignFirstResponder()
    }
    func dismissKeyboardpassword() {
        AccountCreationPassword.resignFirstResponder()
    }
    
    func textFieldShouldReturn(AccountCreationUser: UITextField) -> Bool {
        AccountCreationUser.resignFirstResponder()
        return true
    }
    func textFieldShouldReturnpassword(AccountCreationPassword: UITextField) -> Bool {
        AccountCreationPassword.resignFirstResponder()
        return true
    }
}

/*class Draw: UIView {
 
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let h = rect.height
        let w = rect.width
        let yellowColor = UIColor(red: 254/255.0, green: 249/255.0, blue: 55/255.0, alpha: 1.0)
        var drect = CGRect(x: (w * 0.25),y: (h * 0.25),width: (w * 0.5),height: (h * 0.5))
        var bpath:UIBezierPath = UIBezierPath(rect: drect)
        
        yellowColor.set()
        bpath.stroke()
        
        print("it ran")
        
        NSLog("drawRect has updated the view")
        
    }
    
}*/
