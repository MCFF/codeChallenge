//
//  CustomUIView.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 02/10/21.
//

import Foundation
import UIKit

class CustomUIView: UIView{
    
    @IBInspectable
    private var radius: CGFloat = 0.0{
        didSet{
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = true
        }
    }
}
