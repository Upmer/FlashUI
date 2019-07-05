//
//  UISegmentedControl+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/7/6.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

extension UISegmentedControl {
  func isMomentary(_ isMomentary: Bool) -> Self {
    self.isMomentary = isMomentary
    return self
  }
  func apportionsSegmentWidthsByContent(_ apportionsSegmentWidthsByContent: Bool) -> Self {
    self.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent
    return self
  }
  
  func selectedSegmentIndex(_ selectedSegmentIndex: Int) -> Self {
    self.selectedSegmentIndex = selectedSegmentIndex
    return self
  }
  
}
