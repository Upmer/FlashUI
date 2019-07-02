//
//  UIStackView+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

extension UIStackView {
  func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
    self.axis = axis
    return self
  }
  func distribution(_ distribution: UIStackView.Distribution) -> Self {
    self.distribution = distribution
    return self
  }
  func alignment(_ alignment: UIStackView.Alignment) -> Self {
    self.alignment = alignment
    return self
  }
  func spacing(_ spacing: CGFloat) -> Self {
    self.spacing = spacing
    return self
  }
  
  func add(_ generator: (() -> UIView)) {
    self.addArrangedSubview(generator())
  }
}
