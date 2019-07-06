//
//  UIImageView+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

public extension UIImageView {
  func image(_ image: UIImage?) -> Self {
    self.image = image
    return self
  }
  func highlightedImage(_ highlightedImage: UIImage?) -> Self {
    self.highlightedImage = highlightedImage
    return self
  }
  func isHighlighted(_ isHighlighted: Bool) -> Self {
    self.isHighlighted = isHighlighted
    return self
  }
  
  func animationImages(_ animationImages: [UIImage]?) -> Self {
    self.animationImages = animationImages
    return self
  }
  func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> Self {
    self.highlightedAnimationImages = highlightedAnimationImages
    return self
  }
  
  func animationDuration(_ animationDuration: TimeInterval) -> Self {
    self.animationDuration = animationDuration
    return self
  }
  func animationRepeatCount(_ animationRepeatCount: Int) -> Self {
    self.animationRepeatCount = animationRepeatCount
    return self
  }
}
