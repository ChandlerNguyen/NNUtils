//
//  DispatchQueue+Extensions.swift
//  NNUtils
//
//  Created by Nang Nguyen on 6/3/19.
//

extension DispatchQueue {
    static let labelPrefix = "mylibrary.DevKit"
}

public extension DispatchQueue {
    
    /// DEADLOCK Warning: Never call sync on the main queue, because it will cause a deadlock and a crash.
    /// Use the `mainSyncSafe` method if you are looking for a safe way to do sync calls on main queue
    class func mainSyncSafe(execute work: () -> Void) {
        if Thread.isMainThread {
            work()
        } else {
            DispatchQueue.main.sync(execute: work)
        }
    }
    
    class func mainSyncSafe<T>(execute work: () throws -> T) rethrows -> T {
        if Thread.isMainThread {
            return try work()
        } else {
            return try DispatchQueue.main.sync(execute: work)
        }
    }
}
