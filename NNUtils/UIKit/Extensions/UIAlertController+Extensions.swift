//
//  UIAlertController+Extensions.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/18/19.
//

import UIKit

public extension UIAlertController {
    static var actionSheet: UIAlertController {
        return UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
    }
    
    static var alert: UIAlertController {
        return UIAlertController(title: nil, message: nil, preferredStyle: .alert)
    }
    
    static func actionSheet(title: String? = nil, message: String? = nil) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    }
    static func alert(title: String? = nil, message: String? = nil) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
    
    func addDefault(_ title: String,
                    image: UIImage? = nil,
                    handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: title, style: .default, handler: handler)
        action.setValue(image, forKey: "image")
        addAction(action)
    }
    
    func addCancel(_ title: String = "Cancel",
                   image: UIImage? = nil,
                   handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: title, style: .cancel, handler: handler)
        action.setValue(image, forKey: "image")
        addAction(action)
    }
    
    func addDestructive(_ title: String,
                        image: UIImage? = nil,
                        handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: title, style: .destructive, handler: handler)
        action.setValue(image, forKey: "image")
        addAction(action)
    }
    
    func show(completion: (() -> Void)? = nil) {
        DispatchQueue.main.async(execute: {
            UIApplication.shared.topViewController()?.present(self, animated: true, completion: completion)
        })
    }
}
