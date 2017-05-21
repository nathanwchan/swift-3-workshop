//
//  Todo.swift
//  CFS3ToDoList
//
//  Created by Nathan Chan on 5/21/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import Foundation

class Todo : Identity {
    var identifier: String
    var text: String
    
    init(text: String) {
        self.identifier = UUID().uuidString
        self.text = text
    }
}
