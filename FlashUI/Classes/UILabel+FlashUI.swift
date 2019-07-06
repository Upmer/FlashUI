//
//  UILabel.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

public extension UILabel {
  func text(_ text: String?) -> Self {
    self.text = text
    return self
  }
  func attributedText(_ attributedText: NSAttributedString?) -> Self {
    self.attributedText = attributedText
    return self
  }
  func font(_ font: UIFont) -> Self {
    self.font = font
    return self
  }
  func textColor(_ textColor: UIColor) -> Self {
    self.textColor = textColor
    return self
  }
  func highlightedTextColor(_ highlightedTextColor: UIColor?) -> Self {
    self.highlightedTextColor = highlightedTextColor
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
  
  func isEnabled(_ isEnabled: Bool) -> Self {
    self.isEnabled = isEnabled
    return self
  }
  func isHighlighted(_ isHighlighted: Bool) -> Self {
    self.isHighlighted = isHighlighted
    return self
  }
  
  func shadowColor(_ shadowColor: UIColor?) -> Self {
    self.shadowColor = shadowColor
    return self
  }
  func shadowOffset(_ shadowOffset: CGSize) -> Self {
    self.shadowOffset = shadowOffset
    return self
  }
  func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
    self.lineBreakMode = lineBreakMode
    return self
  }
}
