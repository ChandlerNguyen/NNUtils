//
//  Optional+Extensions.swift
//  NNUtils_Example
//
//  Created by Nang Nguyen on 5/1/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

public extension Optional {
    var isNil: Bool {
        return self == nil
    }
    
    var isNotNil: Bool {
        return !isNil
    }
}

public extension Optional where Wrapped == String {
    var isBlank: Bool {
        return self?.isBlank ?? true
    }
}
