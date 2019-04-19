//
//  MainWindowFactory.swift
//  DevKit
//
//  Created by Nang Nguyen on 1/28/19.
//

import UIKit

final class MainWindowFactory {
    
    static func make() -> UIWindow {
        
        let demoPageVC = DemoPageViewController()
        let tabBarController = UITabBarControllerFactory.make(with: demoPageVC)
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = tabBarController
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        
        return window
    }
    
}
