//
//  ApperanceHelper.swift
//  Lambda Messages Theming
//
//  Created by Michael Flowers on 5/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    static var lambdaRed = UIColor(red: 212.0 /  255.0 , green: 87.0 / 255.0, blue: 80.0 / 255.0 , alpha: 1.0)
    static var backgroundGrey = UIColor(red: 45.0 / 255.0 , green: 45.0 / 255.0, blue: 45.0 / 255.0, alpha: 1.0)
    
    //changing the text font
    static func typerighterFont( with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "RM Typerighter medium", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font) //this will allow the compiler to scale/grow/ in size you have to do this for custom fonts
    }
    
    static func setDarkAppearance(){
        //will use this to set the app to dark colors.
        UISegmentedControl.appearance().tintColor = lambdaRed // i want to affect the appearance of EVERY uisegmented control in the app.
        
        UINavigationBar.appearance().barTintColor = backgroundGrey
        
        //change the color of all the items inside the navigationcontroller, i.e. back, save, add etc.
        UIBarButtonItem.appearance().tintColor = lambdaRed
        
        //change the text
        let textAttributes = [ NSAttributedString.Key.foregroundColor: UIColor.white ]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = lambdaRed //this will alos effect the color of the courser
        UITextView.appearance().tintColor = lambdaRed
    }
    
    //create a method to style any given button in the app
    static func style(button: UIButton){
        button.titleLabel?.font = typerighterFont(with: .callout, pointSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = lambdaRed
        button.layer.cornerRadius = 8.0
        
    }
}
