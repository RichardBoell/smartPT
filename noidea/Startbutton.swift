//
//  Startbutton.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class Startbutton: UIButton {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.init(red: 252/255.0, green: 92/255.0, blue: 112/255.0, alpha: 0.9).setFill()
        path.fill()
        
    }

}
