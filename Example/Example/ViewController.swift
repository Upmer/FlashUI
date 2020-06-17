//
//  ViewController.swift
//  Example
//
//  Created by tsuf on 2019/7/6.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit
import FlashUI

class ViewController: UIViewController {
  
  weak var tableView: UITableView!
  weak var stackView: MyStackView!
  weak var aBtn: UIButton!
  weak var bBtn: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
//    tableView = UITableView(frame: view.bounds, style: .plain).delegate(self)
//      .dataSource(self).superview(view)
//    tableView.registerCell(TestTableViewCell.self)
//    tableView.register(TestTableViewCell.self, forCellReuseIdentifier: "Example.TestTableViewCell.Identifier")
//    tableView.register(UINib(nibName: "NibTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
//    debugPrint(TestTableViewCell.self.description())
//    debugPrint(<#T##items: Any...##Any#>)
    
    stackView = MyStackView().axis(.vertical).superview(view).translatesAutoresizingMaskIntoConstraints(false)
    stackView.frame = CGRect(x: 100, y: 200, width: 100, height: 300)
    
    stackView.add {
      let aBtn = UIButton().normalTitle("AAA").normalTitleColor(.red)
      self.aBtn = aBtn
      return aBtn
    }
    
    stackView.add {
      let bBtn = UIButton().normalTitle("BBB").normalTitleColor(.blue)
      self.bBtn = bBtn
      return bBtn
    }
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    stackView.removeFromSuperview()
  }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: "Example.TestTableViewCell.Identifier") as! TestTableViewCell
    let cell = tableView.dequeueReusableCell(TestTableViewCell.self)
//    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! NibTableViewCell
    cell.titleLabel.text = "\(indexPath.row)"
    return cell
  }
  
}

