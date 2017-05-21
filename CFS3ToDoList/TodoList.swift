//
//  TodoList.swift
//  CFS3ToDoList
//
//  Created by Nathan Chan on 5/21/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import Foundation

class TodoList {
    
    static let shared = TodoList()
    
    var allTodos = [Todo]()
 
    private init(){}
    
    func add(todo: Todo) {
        self.allTodos.append(todo)
    }
    
    func remove(todo: Todo) {
        self.allTodos = self.allTodos.filter({ (item) -> Bool in
            return item.identifier != todo.identifier
        })
    }
    
    func removeAll() {
        self.allTodos.removeAll()
    }
    
    func getTodoAt(index: Int) -> Todo {
        return self.allTodos[index]
    }
    
    func count() -> Int {
        return self.allTodos.count
    }
}
