//
//  UITextField+FlashUI.swift
//  Oxygen
//
//  Created by tsuf on 2019/7/3.
//  Copyright © 2019 oxygen. All rights reserved.
//

import UIKit

extension UITextField {
  func text(_ text: String?) -> Self {
    self.text = text
    return self
  }
  func placeholder(_ placeholder: String?) -> Self {
    self.placeholder = placeholder
    return self
  }
  func textColor(_ color: UIColor?) -> Self {
    self.textColor = color
    return self
  }
  func font(_ font: UIFont?) -> Self {
    self.font = font
    return self
  }
  func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
    self.textAlignment = textAlignment
    return self
  }
  func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
    self.borderStyle = borderStyle
    return self
  }
  func delegate(_ delegate: UITextFieldDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
}
