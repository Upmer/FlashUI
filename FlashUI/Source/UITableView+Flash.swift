//
//  UITableView+Flash.swift
//  FlashUI
//
//  Created by tsuf on 2019/7/6.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

extension UITableView {
  func dataSource(_ dataSource: UITableViewDataSource?) -> Self {
    self.dataSource = dataSource
    return self
  }
  func delegate(_ delegate: UITableViewDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  
  @available(iOS 10.0, *)
  func prefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) -> Self {
    self.prefetchDataSource = prefetchDataSource
    return self
  }
  
  @available(iOS 11.0, *)
  func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> Self {
    self.dragDelegate = dragDelegate
    return self
  }
  
  @available(iOS 11.0, *)
  func dropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> Self {
    self.dropDelegate = dropDelegate
    return self
  }
  
  func rowHeight(_ rowHeight: CGFloat) -> Self {
    self.rowHeight = rowHeight
    return self
  }
  func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> Self {
    self.sectionHeaderHeight = sectionHeaderHeight
    return self
  }
  func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> Self {
    self.sectionFooterHeight = sectionFooterHeight
    return self
  }
  func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> Self {
    self.estimatedRowHeight = estimatedRowHeight
    return self
  }
  func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> Self {
    self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
    return self
  }
  
  func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> Self {
    self.estimatedSectionFooterHeight = estimatedSectionFooterHeight
    return self
  }
  
  func separatorInset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
    self.separatorInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    return self
  }
  
  @available(iOS 11.0, *)
  func separatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference) -> Self {
    self.separatorInsetReference = separatorInsetReference
    return self
  }
  
  func backgroundView(_ backgroundView: UIView?) -> Self {
    self.backgroundView = backgroundView
    return self
  }
  
  func isEditing(_ isEditing: Bool) -> Self {
    self.isEditing = isEditing
    return self
  }
  
  func allowsSelection(_ allowsSelection: Bool) -> Self {
    self.allowsSelection = allowsSelection
    return self
  }
  
  func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> Self {
    self.allowsSelectionDuringEditing = allowsSelectionDuringEditing
    return self
  }
  
  func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
    self.allowsMultipleSelection = allowsMultipleSelection
    return self
  }
  
  func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> Self {
    self.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
    return self
  }
  func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int) -> Self {
    self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
    return self
  }
  
  func sectionIndexColor(_ sectionIndexColor: UIColor?) -> Self {
    self.sectionIndexColor = sectionIndexColor
    return self
  }
  func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> Self {
    self.sectionIndexBackgroundColor = sectionIndexBackgroundColor
    return self
  }
  
  func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> Self {
    self.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
    return self
  }
  
  func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Self {
    self.separatorStyle = separatorStyle
    return self
  }
  
  func separatorColor(_ separatorColor: UIColor?) -> Self {
    self.separatorColor = separatorColor
    return self
  }
  @available(iOS 8.0, *)
  func separatorEffect(_ separatorEffect: UIVisualEffect?) -> Self {
    self.separatorEffect = separatorEffect
    return self
  }
  
  @available(iOS 9.0, *)
  func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> Self {
    self.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
    return self
  }
  @available(iOS 11.0, *)
  func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool) -> Self {
    self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
    return self
  }
  
  func tableHeaderView(_ tableHeaderView: UIView?) -> Self {
    self.tableHeaderView = tableHeaderView
    return self
  }
  
  func tableFooterView(_ tableFooterView: UIView?) -> Self {
    self.tableFooterView = tableFooterView
    return self
  }
  
  
  @available(iOS 9.0, *)
  func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> Self {
    self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
    return self
  }
  
  @available(iOS 11.0, *)
  func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> Self {
    self.dragInteractionEnabled = dragInteractionEnabled
    return self
  }
}
