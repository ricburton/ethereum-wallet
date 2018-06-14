//
//  PopupStateProtocol.swift
//  ethereum-wallet
//
//  Created by Artur Guseinov on 14/03/2018.
//  Copyright © 2018 Artur Guseinov. All rights reserved.
//

import Foundation

enum PopupState {
  case push
  case touchId
  case txSent(amount: String, address: String)
}

protocol PopupStateProtocol {
  var resource: PopupResource { get }
  var title: String { get }
  var description: String { get }
  var confirmTitle: String { get }
  var skipTitle: String? { get }
  var isSkipActive: Bool { get }
}

enum PopupResource {
  case image(name: String)
  case animation(name: String)
}
