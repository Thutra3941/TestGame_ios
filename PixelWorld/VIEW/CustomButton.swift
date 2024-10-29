//
//  CustomButton.swift
//  PixelWorld
//
//  Created by THUTRA on 25/08/2024.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib(){
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 10
        layer.backgroundColor = UIColor.black.withAlphaComponent(0.4).cgColor
    }
   
}
