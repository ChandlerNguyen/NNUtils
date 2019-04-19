//
//  UIActivityIndicatorView+SetAnimating.swift
//  DevKit
//
//  Created by Nang Nguyen on 2/18/19.
//  Copyright © 2019 Evizi. All rights reserved.
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
