//
//  UIActivityIndicatorView+SetAnimating.swift
//  DevKit
//
//  Created by Nang Nguyen on 2/18/19.
//

import UIKit

public extension UIActivityIndicatorView {
    
    func setAnimating(_ animating: Bool) {
        if animating {
            startAnimating()
        } else {
            stopAnimating()
        }
    }
    
}
