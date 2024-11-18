//
//  MessageManager.swift
//  ChatToMVC
//
//  Created by Lydia Lu on 2024/11/18.
//

import Foundation

class MessageManager {
    static let shared = MessageManager()
    
    weak var delegate: MessageDelegate?
    private var messages: [String: Message] = [:]
    
    private init() {}
    
    func send(_ message: Message) {
        // Simulate network delay
        DispatchQueue.global(qos: .background).async { [weak self] in
            Thread.sleep(forTimeInterval: 0.5)
            
            DispatchQueue.main.async {
                self?.messages[message.id] = message
                self?.delegate?.didReceiveNewMessage(message)
            }
        }
    }
    
    func receive(_ message: Message) {
        messages[message.id] = message
        delegate?.didReceiveNewMessage(message)
    }
}
