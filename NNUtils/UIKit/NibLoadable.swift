//
//  NibLoadable.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/17/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import Foundation
import UIKit

public protocol NibLoadable: class {
    static var nibName: String { get }
}

extension NibLoadable {
    public static var nibName: String {
        return String(describing: self).components(separatedBy: ".").first!
    }
}
