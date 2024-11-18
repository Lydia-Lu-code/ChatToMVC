//
//  Message.swift
//  ChatToMVC
//
//  Created by Lydia Lu on 2024/11/18.
//

import Foundation

struct Message {
    let id: String
    let text: String
    let sender: String
    let timestamp: Date
    
    var timeString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: timestamp)
    }
}
