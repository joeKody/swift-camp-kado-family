//
//  ContentView.swift
//  KadoTodo
//
//  Created by Admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    @Query var todos: [TodoItem]
    @State var showAddTodo: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(todos) { item in
                    TodoRowItem(item: item)
                }
            }
            .navigationTitle("Todo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button("Delete Done"){
                        for item in todos {
                            if (item.isCompleted) {
                                context.delete(item)
                            }
                        }
                    }
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button("Add Todo"){
                        showAddTodo.toggle()
                    }
                }
            }
            .sheet(isPresented: $showAddTodo, content: {
                AddTodoSheet()
            })
        }
    }
}

#Preview {
    ContentView()
}
