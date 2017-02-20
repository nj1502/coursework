//
//  RoundBtn.swift
//  coursework
//
//  Created by Nathan Jayawardene on 2/20/17.
//  Copyright © 2017 Nathan Jayawardene. All rights reserved.
//

import UIKit

class RoundBtn: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowOpacity = 0.8
        //how transparent the shadows are
        layer.shadowRadius = 5.0
        // how far the shadows blur out.
        layer.shadowOffset = CGSize(width:1.0, height:1.0)
        // this is how far the bounds of view go.
        
        imageView?.contentMode = .scaleAspectFit
        
    }
    //This turns the facebook button into a circular shape
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.width / 2
        
        
    }
}


 
