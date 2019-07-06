//
//  UIActivityIndicatorView+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/7/5.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

extension UIActivityIndicatorView {
  func style(_ style: UIActivityIndicatorView.Style) -> Self {
    self.style = style
    return self
  }
  func hidesWhenStopped(_ hidesWhenStopped: Bool) -> Self {
    self.hidesWhenStopped = hidesWhenStopped
    return self
  }
  
  func color(_ color: UIColor!) -> Self {
    self.color = color
    return self
  }
}
