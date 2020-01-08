# FlashUI

[![Version](https://img.shields.io/cocoapods/v/FlashUI.svg?style=flat)](https://cocoapods.org/pods/FlashUI)
[![License](https://img.shields.io/cocoapods/l/FlashUI.svg?style=flat)](https://cocoapods.org/pods/FlashUI)
[![Platform](https://img.shields.io/cocoapods/p/FlashUI.svg?style=flat)](https://cocoapods.org/pods/FlashUI)

## Why use this?

Write UI code faster with chained calls

Currently you type:
```swift
let stackView = UIStackView()
self.stackView = stackView
stackView.axis = .vertical
stackView.frame = CGRect(x: 100, y: 200, width: 100, height: 300)
view.addSubview(stackView)
    
let btn = UIButton()
self.aBtn = btn
btn.setTitle("AAA", for: .normal)
btn.setTitleColor(.red, for: .normal)
    
stackView.addArrangedSubview(btn)
```

With FlashUI it becomes:
```swift
stackView = UIStackView().axis(.vertical)
  .frame(x: 100, y: 200, width: 100, height: 300).superview(view)

aBtn = stackView.add {
  UIButton().normalTitle("AAA").normalTitleColor(.red)
}
```

## Requirements

`iOS 9+`

## Installation

FlashUI is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'FlashUI'
```

## Usage

#### 1. Comment View

``` swift
UIView().backgroundColor(.black)
  .cornerRadius(10).clipsToBounds()
  .shadow(color: .red, radius: 3, offset: CGSize(width: 2, height: 2), opacity: 0.5)
  .border(color: .blue, width: 1)
  .superview(view)
```

#### 2. UIButton

``` swift
UIButton().adjustsImageWhenHighlighted(false)
  .normalTitle("A").normalTitleColor(.white)
  .disabledTitle("A").disabledTitleColor(.lightGray)
  .touchUpInside(target: self, action: #selector(onClick))
//      .touchDown(target: self, action: #selector(onClick))
  .superview(view)
```

#### 3. UITableView

``` swift
tableView = UITableView(frame: view.bounds, style: .plain).dataSource(self).delegate(self)
  .rowHeight(72).sectionHeaderHeight(40)
  .tableFooterView(UIView())
  .registerCell(TestTableViewCell.self)
  .registerHeaderFooterView(TestTableHeaderView.self)
  .registerHeaderFooterView(TableFooterView.self)
  .contentInset(top: 0, left: 0, bottom: 49, right: 0)
  .separatorStyle(.none).superview(view)
```


``` swift
let cell = tableView.dequeueReusableCell(TestTableViewCell.self)
let header = tableView.dequeueReusableHeaderFooterView(TestTableHeaderView.self)
```

#### 4. UICollectionView

``` swift
collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
  .registerCell(TestCollectionViewCell.self)
  .registerHeaderView(CollectionHeaderView.self)
  .registerFooterView(CollectionFooterView.self)
  .contentInset(top: 44, left: 0, bottom: 0, right: 0)
  .delegate(self).dataSource(self)
  .backgroundColor(.white).superview(view)
```

``` swift
let cell = collectionView.dequeueReusableCell(TestCollectionViewCell.self, for: indexPath)
let header = collectionView.dequeueReusableHeaderView(CollectionHeaderView.self, for: indexPath)
let footer = collectionView.dequeueReusableFooterView(CollectionFooterView.self, for: indexPath)
```

#### 5. UIStackView

``` swift
let stackView = UIStackView().axis(.vertical).superview(view)

let titleLabel = UILabel().text("Title").textAlignment(.center)
stackView.add { titleLabel }

let submitBtn = stackView.add {
  UIButton().normalTitle("Submit").normalTitleColor(.black)
    .frame(x: 0, y: 0, width: 200, height: 40)
}
```

#### 6. UIGestureRecognizer

``` swift
view.tapGestureRecognizer(target: self, action: #selector(onClick))
view.panGestureRecognizer(target: self, action: #selector(onPan))
```

## Author

KevinT, tifatsubasa@gmail.com

## License

FlashUI is available under the MIT license. See the LICENSE file for more info.
