//
//  TransitionButton.swift
//  noidea
//
//  Created by Richard Boell on 10/16/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class TransitionButton: UIButton {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(rect: rect)
        //let greyColor = UIColor(red: 84/255.0, green: 86/255.0, blue: 91/255.0, alpha: 1.0)
        UIColor.init(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0).setFill()
        path.fill()
        
        
    }

}
