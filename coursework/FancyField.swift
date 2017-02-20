//
//  FancyField.swift
//  coursework
//
//  Created by Nathan Jayawardene on 2/20/17.
//  Copyright © 2017 Nathan Jayawardene. All rights reserved.
//

import UIKit
// function to once again set shadows for the button.
class FancyField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 2.0
        
        // this adds curves to the corners of the text fields
        
    }
    //This function is to set the axis on the screen for the button to be placed.
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
