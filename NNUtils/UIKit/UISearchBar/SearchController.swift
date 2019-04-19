//
//  SearchController.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/19/19.
//

import UIKit


public typealias SearchBarAction = (String) -> ()
public class SearchController: NSObject, UISearchBarDelegate {
    
    public weak var searchBar: UISearchBar? {
        didSet {
            searchBar?.delegate = self
        }
    }
    
    public var searchBarIsActive = false
    public var textDidChange: SearchBarAction?
    
    public func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        searchBar.setShowsCancelButton(true, animated: true)
        return true
    }
    
    public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBarIsActive = true
    }
    
    public func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(false, animated: true)
        searchBarIsActive = false
    }
    
    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.text.map { text in
            self.textDidChange?(text)
        }
    }
    
    public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchBar.resignFirstResponder()
        textDidChange?("")
    }
    
    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        textDidChange?(searchText)
    }
}
