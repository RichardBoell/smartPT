//
//  BasicShape.swift
//  noidea
//
//  Created by Richard Boell on 10/15/16.
//  Copyright © 2016 RB & Comp. All rights reserved.
//

import UIKit

class BasicShape: UITextField {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 7)
        //let greyColor = UIColor(red: 84/255.0, green: 86/255.0, blue: 91/255.0, alpha: 1.0)
        UIColor.init(red: 84/255.0, green: 86/255.0, blue: 91/255.0, alpha: 1.0).setFill()
        path.fill()
        
    }
    

}
