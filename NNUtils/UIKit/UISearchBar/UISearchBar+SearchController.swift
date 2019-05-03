//
//  UISearchBar+SearchController.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/19/19.
//

import UIKit

private extension AssociatedKeys {
    static var nnSearchController = AssociatedKey<SearchController>()
}

extension UISearchBar {
    
    private var searchController: SearchController {
        get {
            return AssociatedObjects.fetch(from: self, key: .nnSearchController, initialValue: { () -> SearchController in
                let controller = SearchController()
                controller.searchBar = self
                return controller
            })
        }
    }
    
    public func setTextDidChange(_ textDidChange: SearchBarAction?) {
        self.searchController.textDidChange = textDidChange
    }
}
