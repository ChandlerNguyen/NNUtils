//
//  UIView+ReusableView.swift
//  DevKit
//
//  Created by Nang Nguyen on 1/28/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableView { }
extension UICollectionReusableView: ReusableView { }
extension UITableViewHeaderFooterView: ReusableView {}
