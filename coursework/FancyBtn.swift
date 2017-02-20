//
//  FancyBtn.swift
//  coursework
//
//  Created by Nathan Jayawardene on 2/20/17.
//  Copyright © 2017 Nathan Jayawardene. All rights reserved.
//

import UIKit

class FancyBtn: UIButton {
//Adds shadows to the Signin Button.
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        //how transparent the shadows are
        layer.shadowRadius = 5.0
        // how far the shadows blur out.
        layer.shadowOffset = CGSize(width:1.0, height:1.0)
        // this is how far the bounds of view go.
        layer.cornerRadius = 2.0
    }
    
    

}
