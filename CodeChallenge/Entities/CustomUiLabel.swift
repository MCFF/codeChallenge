//
//  PaddedLabel.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import Foundation
import UIKit

class CustomUILabel: UILabel{
    
    private var topPadding:CGFloat = 0.0
    private var leftPadding:CGFloat = 0.0
    private var rightPadding:CGFloat = 0.0
    private var bottomPadding:CGFloat = 0.0
    
    override func drawText(in rect: CGRect) {
        let inset = UIEdgeInsets(top: topPadding, left: leftPadding, bottom: bottomPadding, right: rightPadding)
        let rect = rect.inset(by: inset)

        super.drawText(in: rect)
    }
    
    override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        
        let rect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)
        
        rect.inset(by: UIEdgeInsets(top: -topPadding, left: -leftPadding, bottom: -bottomPadding, right: -rightPadding))
        
        return rect
    }
    
    func padding(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat){
        topPadding = top
        leftPadding = left
        rightPadding = right
        bottomPadding = bottom
    }
}
