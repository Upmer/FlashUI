//
//  UIView+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/28.
//  Copyright © 2019 lookwide. All rights reserved.
//

import UIKit

public extension UIView {
  // MARK: Common
  func superview(_ view: UIView) -> Self {
    view.addSubview(self)
    return self
  }
  func contentMode(_ mode: UIView.ContentMode) -> Self {
    self.contentMode = mode
    return self
  }
  func tag(_ tag: Int) -> Self {
    self.tag = tag
    return self
  }
  func contentScaleFactor(_ contentScaleFactor: CGFloat) -> Self {
    self.contentScaleFactor = contentScaleFactor
    return self
  }
  func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> Self {
    self.isMultipleTouchEnabled = isMultipleTouchEnabled
    return self
  }
  func isExclusiveTouch(_ isExclusiveTouch: Bool) -> Self {
    self.isExclusiveTouch = isExclusiveTouch
    return self
  }
  func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> Self {
    self.clearsContextBeforeDrawing = clearsContextBeforeDrawing
    return self
  }
  func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
    self.isUserInteractionEnabled = isUserInteractionEnabled
    return self
  }
  func isHidden(_ isHidden: Bool = true) -> Self {
    self.isHidden = isHidden
    return self
  }
  func alpha(_ alpha: CGFloat) -> Self {
    self.alpha = alpha
    return self
  }
  func isOpaque(_ isOpaque: Bool) -> Self {
    self.isOpaque = isOpaque
    return self
  }
  func mask(_ mask: UIView?) -> Self {
    self.mask = mask
    return self
  }
  func backgroundColor(_ color: UIColor?) -> Self {
    self.backgroundColor = color
    return self
  }
  func tintColor(_ tintColor: UIColor) -> Self {
    self.tintColor = tintColor
    return self
  }
  func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> Self {
    self.tintAdjustmentMode = tintAdjustmentMode
    return self
  }
  
  // MARK: Position
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
  
  func frame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> Self {
    self.frame = CGRect(x: x, y: y, width: width, height: height)
    return self
  }
  func bounds(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> Self {
    self.frame = CGRect(x: x, y: y, width: width, height: height)
    return self
  }
  func center(x: CGFloat, y: CGFloat) -> Self {
    self.center = CGPoint(x: x, y: y)
    return self
  }
  // MARK: Layer
  func clipsToBounds(_ clipsToBounds: Bool = true) -> Self {
    self.clipsToBounds = clipsToBounds
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
  // MARK: Action
  func tapGestureRecognizer(target: Any, action: Selector, numberOfTapsRequired: Int = 1, numberOfTouchesRequired: Int = 1) -> Self {
    let tap = UITapGestureRecognizer(target: target, action: action)
    tap.numberOfTapsRequired = numberOfTapsRequired
    tap.numberOfTouchesRequired = numberOfTouchesRequired
    self.addGestureRecognizer(tap)
    return self
  }
  func longPressGestureRecognizer(target: Any, action: Selector, minimumPressDuration: TimeInterval, numberOfTapsRequired: Int = 0, numberOfTouchesRequired: Int = 1) -> Self {
    let longPress = UILongPressGestureRecognizer(target: target, action: action)
    longPress.minimumPressDuration = minimumPressDuration
    longPress.numberOfTapsRequired = numberOfTapsRequired
    longPress.numberOfTouchesRequired = numberOfTouchesRequired
    self.addGestureRecognizer(longPress)
    return self
  }
  func swipeGestureRecognizer(target: Any, action: Selector, direction: UISwipeGestureRecognizer.Direction = UISwipeGestureRecognizer.Direction.right, numberOfTouchesRequired: Int = 1) -> Self {
    let swipe = UISwipeGestureRecognizer(target: target, action: action)
    swipe.direction = direction
    swipe.numberOfTouchesRequired = numberOfTouchesRequired
    self.addGestureRecognizer(swipe)
    return self
  }
  func panGestureRecognizer(target: Any, action: Selector, minimumNumberOfTouches: Int = 1, maximumNumberOfTouches: Int = Int.max) -> Self {
    let pan = UIPanGestureRecognizer(target: target, action: action)
    pan.minimumNumberOfTouches = minimumNumberOfTouches
    pan.maximumNumberOfTouches = maximumNumberOfTouches
    self.addGestureRecognizer(pan)
    return self
  }
}
