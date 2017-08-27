//
//  UILabelDeviceClass.swift
//
//  Created by MyCandy on 15/07/17.
//  Copyright © 2017 Silver Seahog. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable //Makes the view update even on the StoryBoard

class UILabelDeviceClass : UILabel {
    
    @IBInspectable var defaultFontSize:CGFloat = 0 {
        didSet {
            overrideFontSize(fontSize: defaultFontSize)
        }
    }
    
    func overrideFontSize(fontSize:CGFloat){
        let currentFontName = self.font.fontName
        var calculatedFont: UIFont?
        let height = UIScreen.main.bounds.size.height
        print(height)
        print(UIScreen.main.bounds.size.width)
        switch height {
        case 480.0: //Iphone 3,4 => 3.5 inch
            //calculatedFont = UIFont(name: currentFontName, size: fontSize * 0.7)
            calculatedFont = UIFont(name: currentFontName, size: fontSize * 0.7)
            self.font = calculatedFont
            break
        case 568.0: //iphone 5, 5s, SE => 4 inch
            calculatedFont = UIFont(name: currentFontName, size: fontSize * 0.8)
            self.font = calculatedFont
            break
        case 667.0: //iphone 6, 6s => 4.7 inch
            calculatedFont = UIFont(name: currentFontName, size: fontSize * 0.9)
            self.font = calculatedFont
            break
        case 736.0: //iphone 6s+ 6+ => 5.5 inch
            calculatedFont = UIFont(name: currentFontName, size: fontSize)
            self.font = calculatedFont
            break
        case 768.0: //iPad Landscape
            calculatedFont = UIFont(name: currentFontName, size: fontSize * 1.09)
            self.font = calculatedFont
            break
        case 1024.0: //iPad Pro 9.7 Inch(Landscape), ipad Portrait
            calculatedFont = UIFont(name: currentFontName, size: fontSize * 1.41)
            self.font = calculatedFont
            break
        case 1112.0: // iPad Pro 10.5 Inch
            calculatedFont = UIFont(name: currentFontName, size: fontSize * 1.5)
            self.font = calculatedFont
            break
        case 1366.0: //iPad Pro,iPad Pro 2nd Gen (Portrait)
            calculatedFont = UIFont(name: currentFontName, size: fontSize * 1.83)
            self.font = calculatedFont
            break
        default:
            print("Not an iPhone or an iPad")
            break
        }
        
    }
    
}

