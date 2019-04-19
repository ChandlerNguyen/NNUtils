//
//  UIView+Frame.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/17/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

public extension UIView {
    
    // MARK: - GETTERS
    
    func x() -> CGFloat {
        return self.frame.origin.x
    }
    
    func y() -> CGFloat {
        return self.frame.origin.y
    }
    
    func width() -> CGFloat {
        return self.frame.size.width
    }
    
    func height() -> CGFloat {
        return self.frame.size.height
    }
    
    func rightEdge() -> CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    
    func bottomEdge() -> CGFloat {
        return self.frame.origin.y + self.frame.size.height
    }
    
    // MARK: - MOVE
    // MARK: absolute
    
    func setX(_ x: CGFloat) {
        var frame = self.frame
        frame.origin.x = x
        self.frame = frame
    }
    
    func setY(_ y: CGFloat) {
        var frame = self.frame
        frame.origin.y = y
        self.frame = frame
    }
    
    func setOrigin(_ origin: CGPoint) {
        var frame = self.frame
        frame.origin = origin
        self.frame = frame
    }
}
