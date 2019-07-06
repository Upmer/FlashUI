//
//  UIScrollView.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

extension UIScrollView {
  func contentInset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
    self.contentInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    return self
  }
  func contentOffset(x: CGFloat, y: CGFloat) -> Self {
    self.contentOffset = CGPoint(x: x, y: y)
    return self
  }
  func contentSize(width: CGFloat, height: CGFloat) -> Self {
    self.contentSize = CGSize(width: width, height: height)
    return self
  }
  
  /* Configure the behavior of adjustedContentInset.
   Default is UIScrollViewContentInsetAdjustmentAutomatic.
   */
  @available(iOS 11.0, *)
  func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
    self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
    return self
  }
  
  func delegate(_ delegate: UIScrollViewDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  
  func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> Self {
    self.isDirectionalLockEnabled = isDirectionalLockEnabled
    return self
  }
  func bounces(_ bounces: Bool) -> Self {
    self.bounces = bounces
    return self
  }
  func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
    self.alwaysBounceVertical = alwaysBounceVertical
    return self
  }
  func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
    self.alwaysBounceHorizontal = alwaysBounceHorizontal
    return self
  }
  
  func isPagingEnabled(_ isPagingEnabled: Bool) -> Self {
    self.isPagingEnabled = isPagingEnabled
    return self
  }
  func isScrollEnabled(_ isScrollEnabled: Bool) -> Self {
    self.isScrollEnabled = isScrollEnabled
    return self
  }
  func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
    self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
    return self
  }
  func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
    self.showsVerticalScrollIndicator = showsVerticalScrollIndicator
    return self
  }
  func scrollIndicatorInsets(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
    self.scrollIndicatorInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    return self
  }
  func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> Self {
    self.indicatorStyle = indicatorStyle
    return self
  }
  
  func decelerationRate(_ decelerationRate: UIScrollView.DecelerationRate) -> Self {
    self.decelerationRate = decelerationRate
    return self
  }
  
  func indexDisplayMode(_ indexDisplayMode: UIScrollView.IndexDisplayMode) -> Self {
    self.indexDisplayMode = indexDisplayMode
    return self
  }
  
  func delaysContentTouches(_ delaysContentTouches: Bool) -> Self {
    self.delaysContentTouches = delaysContentTouches
    return self
  }
  func canCancelContentTouches(_ canCancelContentTouches: Bool) -> Self {
    self.canCancelContentTouches = canCancelContentTouches
    return self
  }
  
  func minimumZoomScale(_ minimumZoomScale: CGFloat) -> Self {
    self.minimumZoomScale = minimumZoomScale
    return self
  }
  func maximumZoomScale(_ maximumZoomScale: CGFloat) -> Self {
    self.maximumZoomScale = maximumZoomScale
    return self
  }
  
  func zoomScale(_ zoomScale: CGFloat) -> Self {
    self.zoomScale = zoomScale
    return self
  }
  func bouncesZoom(_ bouncesZoom: Bool) -> Self {
    self.bouncesZoom = bouncesZoom
    return self
  }
  
  func scrollsToTop(_ scrollsToTop: Bool) -> Self {
    self.scrollsToTop = scrollsToTop
    return self
  }
  
  func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> Self {
    self.keyboardDismissMode = keyboardDismissMode
    return self
  }
  
  @available(iOS 10.0, *)
  func refreshControl(_ refreshControl: UIRefreshControl?) -> Self {
    self.refreshControl = refreshControl
    return self
  }
}
