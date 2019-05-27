//
//  String+Extensions.swift
//  NNUtils
//
//  Created by Nang Nguyen on 5/27/19.
//

import Foundation

public extension String {
    var isBlank: Bool {
        return allSatisfy({$0.isWhitespace})
    }
}
