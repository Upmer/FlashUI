//
//  UISearchBar+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/7/2.
//  Copyright © 2019 lookwide. All rights reserved.
//

import UIKit

extension UISearchBar {
  func barStyle(_ barStyle: UIBarStyle) -> Self {
    self.barStyle = barStyle
    return self
  }
  
  func delegate(_ delegate: UISearchBarDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  
  func text(_ text: String?) -> Self {
    self.text = text
    return self
  }
  
  func prompt(_ prompt: String?) -> Self {
    self.prompt = prompt
    return self
  }
  
  func placeholder(_ placeholder: String?) -> Self {
    self.placeholder = placeholder
    return self
  }
  
  func showsBookmarkButton(_ showsBookmarkButton: Bool) -> Self {
    self.showsBookmarkButton = showsBookmarkButton
    return self
  }
  func showsCancelButton(_ showsCancelButton: Bool) -> Self {
    self.showsCancelButton = showsCancelButton
    return self
  }
  func showsSearchResultsButton(_ showsSearchResultsButton: Bool) -> Self {
    self.showsSearchResultsButton = showsSearchResultsButton
    return self
  }
  func isSearchResultsButtonSelected(_ isSearchResultsButtonSelected: Bool) -> Self {
    self.isSearchResultsButtonSelected = isSearchResultsButtonSelected
    return self
  }
  
  func searchBarStyle(_ searchBarStyle: UISearchBar.Style) -> Self {
    self.searchBarStyle = searchBarStyle
    return self
  }
  func barTintColor(_ barTintColor: UIColor?) -> Self {
    self.barTintColor = barTintColor
    return self
  }
  
  func isTranslucent(_ isTranslucent: Bool) -> Self {
    self.isTranslucent = isTranslucent
    return self
  }
  func scopeButtonTitles(_ scopeButtonTitles: [String]?) -> Self {
    self.scopeButtonTitles = scopeButtonTitles
    return self
  }
  func selectedScopeButtonIndex(_ selectedScopeButtonIndex: Int) -> Self {
    self.selectedScopeButtonIndex = selectedScopeButtonIndex
    return self
  }
  
  func showsScopeBar(_ showsScopeBar: Bool) -> Self {
    self.showsScopeBar = showsScopeBar
    return self
  }
  func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
    self.inputAccessoryView = inputAccessoryView
    return self
  }
  
  func backgroundImage(_ backgroundImage: UIImage?) -> Self {
    self.backgroundImage = backgroundImage
    return self
  }
  func scopeBarBackgroundImage(_ scopeBarBackgroundImage: UIImage?) -> Self {
    self.scopeBarBackgroundImage = scopeBarBackgroundImage
    return self
  }
}
