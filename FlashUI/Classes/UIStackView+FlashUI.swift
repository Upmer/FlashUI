//
//  UIStackView+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

public extension UIStackView {
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
  func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> Self {
    self.isBaselineRelativeArrangement = isBaselineRelativeArrangement
    return self
  }
  func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> Self {
    self.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
    return self
  }
  
  func add<T: UIView>(_ generator: (() -> T)) -> T {
    let view = generator()
    self.addArrangedSubview(view)
    return view
  }
}
