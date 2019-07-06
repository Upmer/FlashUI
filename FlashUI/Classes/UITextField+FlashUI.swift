//
//  UITextField+FlashUI.swift
//  Oxygen
//
//  Created by tsuf on 2019/7/3.
//  Copyright © 2019 oxygen. All rights reserved.
//

import UIKit

public extension UITextField {
  func text(_ text: String?) -> Self {
    self.text = text
    return self
  }
  func placeholder(_ placeholder: String?) -> Self {
    self.placeholder = placeholder
    return self
  }
  func textColor(_ color: UIColor?) -> Self {
    self.textColor = color
    return self
  }
  func font(_ font: UIFont?) -> Self {
    self.font = font
    return self
  }
  func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
    self.textAlignment = textAlignment
    return self
  }
  func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
    self.borderStyle = borderStyle
    return self
  }
  func delegate(_ delegate: UITextFieldDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  
  func attributedText(_ attributedText: NSAttributedString?) -> Self {
    self.attributedText = attributedText
    return self
  }
  func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> Self {
    self.defaultTextAttributes = defaultTextAttributes
    return self
  }
  func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self {
    self.attributedPlaceholder = attributedPlaceholder
    return self
  }
  
  func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> Self {
    self.clearsOnBeginEditing = clearsOnBeginEditing
    return self
  }
  func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
    self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
    return self
  }
  func minimumFontSize(_ minimumFontSize: CGFloat) -> Self {
    self.minimumFontSize = minimumFontSize
    return self
  }

  func background(_ background: UIImage?) -> Self {
    self.background = background
    return self
  }
  func disabledBackground(_ disabledBackground: UIImage?) -> Self {
    self.disabledBackground = disabledBackground
    return self
  }
  func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
    self.allowsEditingTextAttributes = allowsEditingTextAttributes
    return self
  }
  func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) -> Self {
    self.typingAttributes = typingAttributes
    return self
  }
  
  func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> Self {
    self.clearButtonMode = clearButtonMode
    return self
  }
  
  func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> Self {
    self.leftViewMode = leftViewMode
    return self
  }
  
  
  func rightView(_ rightView: UIView?) -> Self {
    self.rightView = rightView
    return self
  }
  
  func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> Self {
    self.rightViewMode = rightViewMode
    return self
  }
  
  func inputView(_ inputView: UIView?) -> Self {
    self.inputView = inputView
    return self
  }
  
  func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
    self.inputAccessoryView = inputAccessoryView
    return self
  }
  
  func clearsOnInsertion(_ clearsOnInsertion: Bool) -> Self {
    self.clearsOnInsertion = clearsOnInsertion
    return self
  }
}
