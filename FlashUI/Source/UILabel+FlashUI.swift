//
//  UILabel.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

extension UILabel {
  func font(_ font: UIFont) -> Self {
    self.font = font
    return self
  }
  func text(_ text: String?) -> Self {
    self.text = text
    return self
  }
  func textColor(_ textColor: UIColor) -> Self {
    self.textColor = textColor
    return self
  }
  func textAlignment(_ alignment: NSTextAlignment) -> Self {
    self.textAlignment = alignment
    return self
  }
  func numberOfLines(_ number: Int) -> Self {
    self.numberOfLines = number
    return self
  }
}
