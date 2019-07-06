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
  func normalBackgroundImage(_ image: UIImage?) -> Self {
    self.setBackgroundImage(image, for: .normal)
    return self
  }
  func selectedBackgroundImage(_ image: UIImage?) -> Self {
    self.setBackgroundImage(image, for: .selected)
    return self
  }
  func disabledBackgroundImage(_ image: UIImage?) -> Self {
    self.setBackgroundImage(image, for: .disabled)
    return self
  }
  func highlightedBackgroundImage(_ image: UIImage?) -> Self {
    self.setBackgroundImage(image, for: .highlighted)
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
  
  func reversesTitleShadowWhenHighlighted(_ reversesTitleShadowWhenHighlighted: Bool) -> Self {
    self.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
    return self
  }
  
  func adjustsImageWhenDisabled(_ adjustsImageWhenDisabled: Bool) -> Self {
    self.adjustsImageWhenDisabled = adjustsImageWhenDisabled
    return self
  }
  func showsTouchWhenHighlighted(_ showsTouchWhenHighlighted: Bool) -> Self {
    self.showsTouchWhenHighlighted = showsTouchWhenHighlighted
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
  
  func titleEdgeInsets(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
    self.titleEdgeInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    return self
  }
  
  func imageEdgeInsets(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
    self.imageEdgeInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    return self
  }
  
  func contentEdgeInsets(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
    self.contentEdgeInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    return self
  }
  
  func touchUpInside(target: Any?, action: Selector) -> Self {
    self.addTarget(target, action: action, for: .touchUpInside)
    return self
  }
  func touchDown(target: Any?, action: Selector) -> Self {
    self.addTarget(target, action: action, for: .touchDown)
    return self
  }
}
