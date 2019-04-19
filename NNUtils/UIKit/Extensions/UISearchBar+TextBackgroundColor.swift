//
//  UISearchBar+TextBackgroundColor.swift
//  DevKit
//
//  Created by Nang Nguyen on 2/14/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

public extension UISearchBar {
    
    func setTextBackgroundColor(_ color: UIColor) {
        subviews.forEach { view in
            if let textField = view.subviews.first(where: { view in view is UITextField }) as? UITextField {
                textField.backgroundColor = color
            }
        }
    }
}
