//
//  UIScreen+Proportions.swift
//  DevKit
//
//  Created by Nang Nguyen on 2/14/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

public extension UIScreen {
    
    private static let iPhone6Width: CGFloat = 375
    
    static var widthProportion: CGFloat {
        
        return main.bounds.width/iPhone6Width
    }
}
