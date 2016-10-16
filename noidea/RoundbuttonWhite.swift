//
//  RoundbuttonWhite.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class RoundbuttonWhite: UIButton {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.init(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.9).setFill()
        path.fill()
        UIColor.init(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).setStroke()
        path.stroke()
        path.lineWidth = 10.0
    }

}
