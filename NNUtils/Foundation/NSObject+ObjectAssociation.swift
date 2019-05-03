//
//  NSObject+ObjectAssociation.swift
//  NNUtils_Example
//
//  Created by Nang Nguyen on 5/1/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

private extension AssociatedKeys {
    static var nnMutableDictionary = AssociatedKey<NSMutableDictionary>()
}

public extension NSObject {
    
    private var sharedObjectDictionary: NSMutableDictionary {
        get {
            return AssociatedObjects.fetch(from: self, key: .nnMutableDictionary, initialValue: NSMutableDictionary())
        }
    }

    func associatedObject(withKey key: String) -> Any? {
        return self.sharedObjectDictionary.object(forKey: key)
    }

    func setAssociatedObject(_ object: Any?, forKey key: String) {
        if object.isNil {
            self.sharedObjectDictionary.removeObject(forKey: key)
        } else {
            self.sharedObjectDictionary.setValue(object, forKey: key)
        }
    }

    func removeAssociatedObject(withKey key: String) {
        self.setAssociatedObject(nil, forKey: key)
    }
}
