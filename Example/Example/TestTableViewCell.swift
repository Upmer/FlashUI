//
//  TestTableViewCell.swift
//  Example
//
//  Created by tsuf on 2019/7/6.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
  
  weak var titleLabel: UILabel!

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupUI()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupUI() {
    titleLabel = UILabel().text("I'm tableview cell")
      .font(UIFont.boldSystemFont(ofSize: 14)).textColor(.orange).textAlignment(.center)
      .superview(contentView)
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    titleLabel.frame = contentView.bounds
  }
}
