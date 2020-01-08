//
//  CollectionFooterView.swift
//  Example
//
//  Created by upmer on 2020/1/8.
//  Copyright © 2020 upmer. All rights reserved.
//

import UIKit

class CollectionFooterView: UICollectionReusableView {
  
  private weak var titleLabel: UILabel!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    render()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    render()
  }
  
  private func render() {
    titleLabel = UILabel().text("I'm collectionView footer view")
      .font(UIFont.boldSystemFont(ofSize: 14)).textColor(.blue)
      .numberOfLines(0).textAlignment(.center)
      .superview(self)
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    titleLabel.frame = self.bounds
  }
}
