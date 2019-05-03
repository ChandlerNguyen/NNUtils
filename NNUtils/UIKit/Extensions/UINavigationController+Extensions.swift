//
//  UINavigationController+Extensions.swift
//  NNUtils_Example
//
//  Created by Nang Nguyen on 5/1/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

public extension UINavigationController {
    func push(viewController: UIViewController, animated: Bool = true) {
        pushViewController(viewController, animated: animated)
    }
    
    func pop(animated: Bool = true) {
        popViewController(animated: animated)
    }
}
