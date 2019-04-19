//
//  CGFloat+Proportions.swift
//  DevKit
//
//  Created by Nang Nguyen on 2/14/19.
//

import UIKit

public extension CGFloat {
    
    var proportionalToWidth: CGFloat {
        return self * UIScreen.widthProportion
    }
}
