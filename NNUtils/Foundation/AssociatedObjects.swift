//
//  AssociatedObjects.swift
//  NNUtils_Example
//
//  Created by Nang Nguyen on 5/2/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

public enum AssociationPolicy {
    case Assign
    case RetainNonatomic
    case CopyNonatomic
    case Retain
    case Copy
    
    public var value: objc_AssociationPolicy {
        switch self {
        case .Assign:
            return .OBJC_ASSOCIATION_ASSIGN
        case .RetainNonatomic:
            return .OBJC_ASSOCIATION_RETAIN_NONATOMIC
        case .CopyNonatomic:
            return .OBJC_ASSOCIATION_COPY_NONATOMIC
        case .Retain:
            return .OBJC_ASSOCIATION_RETAIN
        case .Copy:
            return .OBJC_ASSOCIATION_COPY
        }
    }
}

public class AssociatedKeys {
    fileprivate init() {}
}

public final class AssociatedKey<T>: AssociatedKeys {
    fileprivate var keyValue: Void?
    fileprivate let policy: AssociationPolicy
    public init(_ policy: AssociationPolicy = .RetainNonatomic) {
        self.policy = policy
        super.init()
    }
}

private class AssociatedObject<T>: NSObject, NSCopying {
    
    fileprivate var value: T
    
    init(_ value: T) {
        self.value = value
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return AssociatedObject(value)
    }
    
}

public typealias initialValueAction<Value> = () -> Value

public enum AssociatedObjects {
    static func store<T>(to: Any, key: AssociatedKey<T>, value: T) {
        objc_setAssociatedObject(to, &key.keyValue, AssociatedObject(value), key.policy.value)
    }
    
    static func fetch<T>(from: Any, key: AssociatedKey<T>, initialValue: () -> T) -> T {
        if let object = objc_getAssociatedObject(from, &key.keyValue) as? AssociatedObject<T> {
            return object.value
        }
        let initialValue = initialValue()
        store(to: from, key: key, value: initialValue)
        return initialValue
    }
    
    static func fetch<T>(from: Any, key: AssociatedKey<T>, initialValue: @autoclosure () -> T) -> T {
        if let object = objc_getAssociatedObject(from, &key.keyValue) as? AssociatedObject<T> {
            return object.value
        }
        let initialValue = initialValue()
        store(to: from, key: key, value: initialValue)
        return initialValue
    }
    
    static func clear(from: Any) {
        objc_removeAssociatedObjects(from)
    }
}
