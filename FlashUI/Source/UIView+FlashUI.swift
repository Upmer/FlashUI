//
//  UIView+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/28.
//  Copyright © 2019 lookwide. All rights reserved.
//

import UIKit

extension UIView {
  func tag(_ tag: Int) -> Self {
    self.tag = tag
    return self
  }
  
  func x(_ x: CGFloat) -> Self {
    self.frame = CGRect(x: x, y: self.frame.origin.y, width: self.frame.size.width, height: self.frame.size.height)
    return self
  }
  
  func y(_ y: CGFloat) -> Self {
    self.frame = CGRect(x: self.frame.origin.x, y: y, width: self.frame.size.width, height: self.frame.size.height)
    return self
  }
  
  func width(_ width: CGFloat) -> Self {
    self.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: width, height: self.frame.size.height)
    return self
  }
  
  func height(_ height: CGFloat) -> Self {
    self.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.size.width, height: height)
    return self
  }
  
  func superview(_ view: UIView) -> Self {
    view.addSubview(self)
    return self
  }
  
  func contentMode(_ mode: UIView.ContentMode) -> Self {
    self.contentMode = mode
    return self
  }
  
  func backgroundColor(_ color: UIColor?) -> Self {
    self.backgroundColor = color
    return self
  }
  
  func clipsToBounds(_ clipsToBounds: Bool = true) -> Self {
    self.clipsToBounds = clipsToBounds
    return self
  }
  
  func isHidden(_ isHidden: Bool = true) -> Self {
    self.isHidden = isHidden
    return self
  }
  
  func cornerRadius(_ cornerRadius: CGFloat) -> Self {
    self.layer.cornerRadius = cornerRadius
    return self
  }
  
  func shadow(color: UIColor, radius: CGFloat = 0, offset: CGSize = .zero, opacity: Float = 1) -> Self {
    self.layer.shadowOffset = offset
    self.layer.shadowRadius = radius
    self.layer.shadowColor = color.cgColor
    self.layer.shadowOpacity = opacity
    return self
  }
  
  func border(color: UIColor, width: CGFloat = 0) -> Self {
    self.layer.borderColor = color.cgColor
    self.layer.borderWidth = width
    return self
  }
  
  func tapGestureRecognizer(target: Any, action: Selector, numberOfTapsRequired: Int = 1, numberOfTouchesRequired: Int = 1) -> Self {
    let tap = UITapGestureRecognizer(target: target, action: action)
    tap.numberOfTapsRequired = 1
    tap.numberOfTouchesRequired = 1
    self.addGestureRecognizer(tap)
    return self
  }
}
