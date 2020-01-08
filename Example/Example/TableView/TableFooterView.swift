//
//  TableFooterView.swift
//  Example
//
//  Created by upmer on 2020/1/8.
//  Copyright © 2020 upmer. All rights reserved.
//

import UIKit

class TableFooterView: UITableViewHeaderFooterView {

  private weak var titleLabel: UILabel!

  override init(reuseIdentifier: String?) {
    super.init(reuseIdentifier: reuseIdentifier)
    render()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func render() {
    titleLabel = UILabel().text("I'm table footer view")
      .textColor(.red).textAlignment(.center)
      .superview(contentView)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    titleLabel.frame = self.bounds
  }
}
