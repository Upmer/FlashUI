
//
//  UICollectionView.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

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
