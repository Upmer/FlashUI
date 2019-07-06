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

  override func viewDidLoad() {
    super.viewDidLoad()
    UIButton().normalTitle("as").normalTitleColor(.red).frame(x: 100, y: 100, width: 200, height: 300).superview(view)
  }


}

