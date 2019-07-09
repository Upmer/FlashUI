//
//  UITextView+FlashUI.swift
//  FlashUI
//
//  Created by tsuf on 2019/7/9.
//

import UIKit

public extension UITextView {
  func delegate(_ delegate: UITextViewDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  
  func text(_ text: String) -> Self {
    self.text = text
    return self
  }
  
  func font(_ font: UIFont?) -> Self {
    self.font = font
    return self
  }
  
  func textColor(_ textColor: UIColor?) -> Self {
    self.textColor = textColor
    return self
  }
  
  func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
    self.textAlignment = textAlignment
    return self
  } // default is NSLeftTextAlignment
  
  func selectedRange(_ selectedRange: NSRange) -> Self {
    self.selectedRange = selectedRange
    return self
  }
  
  func isEditable(_ isEditable: Bool) -> Self {
    self.isEditable = isEditable
    return self
  }
  
  func isSelectable(_ isSelectable: Bool) -> Self {
    self.isSelectable = isSelectable
    return self
  } // toggle selectability, which controls the ability of the user to select content and interact with URLs & attachments. On tvOS this also makes the text view focusable.
  
  func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> Self {
    self.dataDetectorTypes = dataDetectorTypes
    return self
  }
  
  func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
    self.allowsEditingTextAttributes = allowsEditingTextAttributes
    return self
  } // defaults to NO
  
  func attributedText(_ attributedText: NSAttributedString) -> Self {
    self.attributedText = attributedText
    return self
  }
  
  func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> Self {
    self.typingAttributes = typingAttributes
    return self
  } // automatically resets when the selection changes
  
  func inputView(_ inputView: UIView?) -> Self {
    self.inputView = inputView
    return self
  }
  
  func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
    self.inputAccessoryView = inputAccessoryView
    return self
  }
  
  func clearsOnInsertion(_ clearsOnInsertion: Bool ) -> Self {
    self.clearsOnInsertion = clearsOnInsertion
    return self
  } // defaults to NO. if YES, the selection UI is hidden, and inserting text will replace the contents of the field. changing the selection will automatically
  
  func textContainerInset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
    self.textContainerInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    return self
  }
  
  func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]) -> Self {
    self.linkTextAttributes = linkTextAttributes
    return self
  }
}
