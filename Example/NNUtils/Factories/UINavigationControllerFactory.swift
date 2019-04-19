//
//  UINavigationControllerFactory.swift
//  DevKit
//
//  Created by Nang Nguyen on 1/28/19.
//

import UIKit

final class UINavigationControllerFactory {
    
    static func make(with rootViewController: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        
        navigationController.navigationBar.barTintColor = UIColor.App.yellow
        navigationController.navigationBar.tintColor = UIColor.App.darkBlue
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = false
        
        let font = UIFont.systemFont(ofSize: 17, weight: .light)
        let attributes = [NSAttributedString.Key.font: font]
        navigationController.navigationBar.titleTextAttributes = attributes
        
        return navigationController
    }
    
}
