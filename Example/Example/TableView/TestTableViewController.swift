//
//  TestTableViewController.swift
//  Example
//
//  Created by upmer on 2020/1/8.
//  Copyright © 2020 upmer. All rights reserved.
//

import UIKit
import FlashUI


class TestTableViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
  
  private weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    renderTableView()
  }

  private func renderTableView() {
    tableView = UITableView(frame: view.bounds, style: .plain).dataSource(self).delegate(self)
      .rowHeight(72).sectionHeaderHeight(40)
      .tableFooterView(UIView())
      .registerCell(TestTableViewCell.self)
      .registerHeaderFooterView(TestTableHeaderView.self)
      .registerHeaderFooterView(TableFooterView.self)
      .contentInset(top: 0, left: 0, bottom: 49, right: 0)
      .separatorStyle(.none).superview(view)
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(TestTableViewCell.self)
    return cell
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let header = tableView.dequeueReusableHeaderFooterView(TestTableHeaderView.self)
    return header
  }
  
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    return tableView.dequeueReusableHeaderFooterView(TableFooterView.self)
  }
}
