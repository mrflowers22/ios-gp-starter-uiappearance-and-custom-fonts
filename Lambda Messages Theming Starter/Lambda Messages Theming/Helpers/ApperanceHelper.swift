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
    
    
    static func setDarkAppearance(){
        //will use this to set the app to dark colors.
        UISegmentedControl.appearance().tintColor = lambdaRed // i want to affect the appearance of EVERY uisegmented control in the app. 
    }
}
