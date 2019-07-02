//
//  UIButton.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

extension UIButton {
  func normalImage(_ image: UIImage?) -> Self {
    self.setImage(image, for: .normal)
    return self
  }
  func selectedImage(_ image: UIImage?) -> Self {
    self.setImage(image, for: .selected)
    return self
  }
  func disabledImage(_ image: UIImage?) -> Self {
    self.setImage(image, for: .disabled)
    return self
  }
  func highlightedImage(_ image: UIImage?) -> Self {
    self.setImage(image, for: .highlighted)
    return self
  }
  
  func normalTitle(_ title: String?) -> Self {
    self.setTitle(title, for: .normal)
    return self
  }
  func selectedTitle(_ title: String?) -> Self {
    self.setTitle(title, for: .selected)
    return self
  }
  func disabledTitle(_ title: String?) -> Self {
    self.setTitle(title, for: .disabled)
    return self
  }
  func highlightedTitle(_ title: String?) -> Self {
    self.setTitle(title, for: .highlighted)
    return self
  }
  
  func normalTitleColor(_ color: UIColor?) -> Self {
    self.setTitleColor(color, for: .normal)
    return self
  }
  func selectedTitleColor(_ color: UIColor?) -> Self {
    self.setTitleColor(color, for: .selected)
    return self
  }
  func disabledTitleColor(_ color: UIColor?) -> Self {
    self.setTitleColor(color, for: .disabled)
    return self
  }
  func highlightedTitleColor(_ color: UIColor?) -> Self {
    self.setTitleColor(color, for: .highlighted)
    return self
  }
  
  func adjustsImageWhenHighlighted(_ enable: Bool) -> Self {
    self.adjustsImageWhenHighlighted = enable
    return self
  }
  
  func font(_ font: UIFont) -> Self {
    self.titleLabel?.font = font
    return self
  }
  
  func touchUpInside(target: Any?, action: Selector) -> Self {
    self.addTarget(target, action: action, for: .touchUpInside)
    return self
  }
}
