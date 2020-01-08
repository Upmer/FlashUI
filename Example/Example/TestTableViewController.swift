//
//  TestTableViewController.swift
//  Example
//
//  Created by upmer on 2020/1/8.
//  Copyright © 2020 upmer. All rights reserved.
//

import UIKit
import FlashUI


class TestTableViewController: UIViewController, UITableViewDataSource {
  
  private weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    renderTableView()
  }

  private func renderTableView() {
    tableView = UITableView(frame: view.bounds, style: .plain).dataSource(self)
      .rowHeight(72).tableFooterView(UIView())
      .registerCell(TestTableViewCell.self)
      .contentInset(top: 44, left: 0, bottom: 0, right: 0)
      .separatorStyle(.none).superview(view)
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(TestTableViewCell.self)
    return cell
  }
}
