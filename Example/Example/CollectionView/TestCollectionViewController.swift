//
//  TestCollectionViewController.swift
//  Example
//
//  Created by upmer on 2020/1/8.
//  Copyright © 2020 upmer. All rights reserved.
//

import UIKit
import FlashUI

class TestCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  private weak var collectionView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    renderCollectionView()
  }
  
  private func renderCollectionView() {
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: 100, height: 100)
    
    collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
      .registerCell(TestCollectionViewCell.self)
      .registerHeaderView(CollectionHeaderView.self)
      .registerFooterView(CollectionFooterView.self)
      .contentInset(top: 44, left: 0, bottom: 0, right: 0)
      .delegate(self).dataSource(self)
      .backgroundColor(.white).superview(view)

  }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 5
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 6
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(TestCollectionViewCell.self, for: indexPath)
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSize(width: 0, height: 40)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    return CGSize(width: 0, height: 80)
  }
  
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    if kind == UICollectionView.elementKindSectionHeader {
      let header = collectionView.dequeueReusableHeaderView(CollectionHeaderView.self, for: indexPath)
      return header
    } else {
      return collectionView.dequeueReusableFooterView(CollectionFooterView.self, for: indexPath)
    }
  }
}
