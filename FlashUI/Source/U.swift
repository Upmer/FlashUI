//
//  U.swift
//  unicorn-ios
//
//  Created by tsuf on 2019/6/28.
//  Copyright © 2019 lookwide. All rights reserved.
//

import UIKit

extension UIView {
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
}


extension UIScrollView {
  func contentInset(_ contentInset: UIEdgeInsets) -> Self {
    self.contentInset = contentInset
    return self
  }
}

extension UICollectionView {
  func dataSource(_ dataSource: UICollectionViewDataSource?) -> Self {
    self.dataSource = dataSource
    return self
  }
  func delegate(_ delegate: UICollectionViewDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
}

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
}
