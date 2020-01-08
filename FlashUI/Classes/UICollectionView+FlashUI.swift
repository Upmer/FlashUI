//
//  UICollectionView.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

public extension UICollectionView {
  func dataSource(_ dataSource: UICollectionViewDataSource?) -> Self {
    self.dataSource = dataSource
    return self
  }
  func delegate(_ delegate: UICollectionViewDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  
  @available(iOS 10.0, *)
  func prefetchDataSource(_ prefetchDataSource: UICollectionViewDataSourcePrefetching?) -> Self {
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
  
  func registerCell<T: UICollectionViewCell>(_ cellClass: T.Type) -> Self {
    let identifier = cellClass.description() + ".Identifier"
    self.register(cellClass, forCellWithReuseIdentifier: identifier)
    return self
  }
  
  func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
    let identifier = cellClass.description() + ".Identifier"
    guard let cell = self.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? T else {
      fatalError("No specific identifier is registered for the \(cellClass.description()) cell")
    }
    return cell
  }
  
  func registerHeaderView<T: UICollectionReusableView>(_ viewClass: T.Type) -> Self {
    let identifier = viewClass.description() + ".Identifier"
    self.register(viewClass, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier)
    return self
  }
  
  func registerFooterView<T: UICollectionReusableView>(_ viewClass: T.Type) -> Self {
    let identifier = viewClass.description() + ".Identifier"
    self.register(viewClass, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
    return self
  }

  func dequeueReusableHeaderView<T: UICollectionReusableView>(_ viewClass: T.Type, for indexPath: IndexPath) -> T {
    let identifier = viewClass.description() + ".Identifier"
    guard let view = self.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier, for: indexPath) as? T else {
      fatalError("No specific identifier is registered for the \(viewClass.description()) headerView")
    }
    return view
  }

  func dequeueReusableFooterView<T: UICollectionReusableView>(_ viewClass: T.Type, for indexPath: IndexPath) -> T {
    let identifier = viewClass.description() + ".Identifier"
    guard let view = self.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier, for: indexPath) as? T else {
      fatalError("No specific identifier is registered for the \(viewClass.description()) footerView")
    }
    return view
  }
}
