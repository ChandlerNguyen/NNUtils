//
//  UISearchBar+SearchController.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/19/19.
//

import UIKit

extension UISearchBar {
    private struct AssociatedKeys {
        static var SearchController = "SearchController"
    }
    
    public var searchController: SearchController? {
        get {
            var controller = objc_getAssociatedObject(self, &AssociatedKeys.SearchController) as? SearchController
            if (controller != nil) {
                return controller
            }
            controller = SearchController()
            self.searchController = controller
            return controller
        }
        
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self,&AssociatedKeys.SearchController,newValue as SearchController?,.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                searchController?.searchBar = self
            }
        }
    }
    
    public func setTextDidChange(_ textDidChange: SearchBarAction?) {
        self.searchController?.textDidChange = textDidChange
    }
}
