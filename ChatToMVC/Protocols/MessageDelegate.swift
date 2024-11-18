//
//  MessageDelegate.swift
//  ChatToMVC
//
//  Created by Lydia Lu on 2024/11/18.
//

import Foundation

protocol MessageDelegate: AnyObject {
    func didReceiveNewMessage(_ message: Message)
}
