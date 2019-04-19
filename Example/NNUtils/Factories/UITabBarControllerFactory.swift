//
//  UITabBarControllerFactory.swift
//  DevKit
//
//  Created by Nang Nguyen on 1/28/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

final class UITabBarControllerFactory {
    
    static func make(with viewControllers: UIViewController...) -> UITabBarController {
        
        let tabBarController = UITabBarController()
        
        tabBarController.tabBar.barTintColor = UIColor.App.yellow
        tabBarController.tabBar.tintColor = .black
        tabBarController.tabBar.isTranslucent = false
        
        tabBarController.viewControllers = viewControllers
        
        return tabBarController
    }
    
}
