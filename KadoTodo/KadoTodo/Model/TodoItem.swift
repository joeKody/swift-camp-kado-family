//
//  TodoItem.swift
//  KadoTodo
//
//  Created by Admin on 15/6/2567 BE.
//

import Foundation
import SwiftData

@Model
class TodoItem {
    var task: String
    var isCompleted: Bool
    var dueDate: Date
    
    init(task: String = "", isCompleted: Bool = false, dueDate: Date = Date.now) {
        self.task = task
        self.isCompleted = isCompleted
        self.dueDate = dueDate
    }
}
