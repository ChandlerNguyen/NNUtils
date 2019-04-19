//
//  CGFloat+Proportions.swift
//  DevKit
//
//  Created by Nang Nguyen on 2/14/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

public extension CGFloat {
    
    var proportionalToWidth: CGFloat {
        return self * UIScreen.widthProportion
    }
}
