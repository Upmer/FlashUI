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
  
  @available(iOS 10.0, *)
  weak func prefetchDataSource(_ prefetchDataSource: UICollectionViewDataSourcePrefetching?) -> Self {
    self.prefetchDataSource = prefetchDataSource
    return self
  }
  
  @available(iOS 10.0, *)
  func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> Self {
    self.isPrefetchingEnabled = isPrefetchingEnabled
    return self
  }
  
  @available(iOS 11.0, *)
  func dragDelegate(_ dragDelegate: UICollectionViewDragDelegate?) -> Self {
    self.dragDelegate = dragDelegate
    return self
  }
  
  @available(iOS 11.0, *)
  func dropDelegate(_ dropDelegate: UICollectionViewDropDelegate?) -> Self {
    self.dropDelegate = dropDelegate
    return self
  }
  
  @available(iOS 11.0, *)
  func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> Self {
    self.dragInteractionEnabled = dragInteractionEnabled
    return self
  }
  
  @available(iOS 11.0, *)
  func reorderingCadence(_ reorderingCadence: UICollectionView.ReorderingCadence) -> Self {
    self.reorderingCadence = reorderingCadence
    return self
  }
  
  func backgroundView(_ backgroundView: UIView?) -> Self {
    self.backgroundView = backgroundView
    return self
  }
  
  func allowsSelection(_ allowsSelection: Bool) -> Self {
    self.allowsSelection = allowsSelection
    return self
  }
  func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
    self.allowsMultipleSelection = allowsMultipleSelection
    return self
  }
  
  // Support for Focus
  @available(iOS 9.0, *)
  func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> Self {
    self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
    return self
  }
}
