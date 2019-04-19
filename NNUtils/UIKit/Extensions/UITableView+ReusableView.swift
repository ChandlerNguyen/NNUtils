//
//  UITableView+ReusableView.swift
//  DevKit
//
//  Created by Nang Nguyen on 1/28/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

public extension UITableView {
    
    // Cell
    func register<T: UITableViewCell>(_ option: RegisterCellOption<T>) {
        switch option {
        case .class(let cellType):
            register(cellType, forCellReuseIdentifier: cellType.reuseIdentifier)
        case .nib(let cellType):
            register(cellType.nib, forCellReuseIdentifier: cellType.reuseIdentifier)
        }
    }
    
    func dequeueReusableCell<T: UITableViewCell>(_ cellType: T.Type, for indexPath: IndexPath) -> T? {
        return dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T
    }
    
    // Header/Footer
    func register<T: UITableViewHeaderFooterView>(_ option: RegisterCellOption<T>) {
        switch option {
        case .class(let cellType):
            register(cellType, forHeaderFooterViewReuseIdentifier: cellType.reuseIdentifier)
        case .nib(let cellType):
            register(cellType.nib, forHeaderFooterViewReuseIdentifier: cellType.reuseIdentifier)
        }
    }
    
    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(_ cellType: T.Type) -> T? {
        return dequeueReusableHeaderFooterView(withIdentifier: cellType.reuseIdentifier) as? T
    }
    
}
