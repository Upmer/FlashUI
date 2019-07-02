//
//  UISearchBar+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/7/2.
//  Copyright © 2019 lookwide. All rights reserved.
//

import UIKit

extension UISearchBar {
  func delegate(_ delegate: UISearchBarDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  func searchBarStyle(_ style: UISearchBar.Style) -> Self {
    self.searchBarStyle = style
    return self
  }
  func placeholder(_ placeholder: String?) -> Self {
    self.placeholder = placeholder
    return self
  }
  func showsCancelButton(_ showsCancelButton: Bool) -> Self {
    self.showsCancelButton = showsCancelButton
    return self
  }
  
  func tintColor(_ color: UIColor) -> Self {
    self.tintColor = color
    return self
  }
  
  func barTintColor(_ color: UIColor?) -> Self {
    self.barTintColor = color
    return self
  }
}
