//
//  RoundButton.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.init(red: 84/255.0, green: 86/255.0, blue: 91/255.0, alpha: 1.0).setFill()
        path.fill()
        
    }

}
