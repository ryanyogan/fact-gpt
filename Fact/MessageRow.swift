//
//  MessageRow.swift
//  Fact
//
//  Created by Ryan Yogan on 6/13/23.
//

import SwiftUI

struct MessageRow: Identifiable {
    let id = UUID()
    
    var isInteractingWithChatGPT: Bool
    
    let sendImage: String
    let sendText: String
    
    let responseImage: String
    var responseText: String
    
    var responseError: String
}
