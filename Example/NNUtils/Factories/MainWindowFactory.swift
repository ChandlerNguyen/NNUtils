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
        let vc1 = ViewController1()
        let naviController = UINavigationControllerFactory.make(with: demoPageVC)
        //let tabBarController = UITabBarControllerFactory.make(with: naviController)
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = naviController
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        
        return window
    }
    
}
