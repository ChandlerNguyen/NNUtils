//
//  UITabBarControllerFactory.swift
//  DevKit
//
//  Created by Nang Nguyen on 1/28/19.
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
