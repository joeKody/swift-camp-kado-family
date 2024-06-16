//
//  KadoTodoApp.swift
//  KadoTodo
//
//  Created by Admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

@main
struct KadoTodoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: TodoItem.self)
    }
}
