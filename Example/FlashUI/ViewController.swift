//
//  ViewController.swift
//  FlashUI
//
//  Created by tsuf on 2019/6/30.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let btn = UIButton().normalTitle("Hello world").font(.boldSystemFont(ofSize: 20))
    .normalTitleColor(.green).superview(view)
    btn.frame = CGRect(x: 100, y: 100, width: 120, height: 30)
  }


}

