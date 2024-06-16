//
//  AddTodoSheet.swift
//  KadoTodo
//
//  Created by Admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

struct AddTodoSheet: View {
    
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @State var todoItem: TodoItem = TodoItem()
    
    var body: some View {
        NavigationStack {
            List {
                TextField("Enter your task", text: $todoItem.task)
                    .padding(.vertical)
                    .font(.title3)
                DatePicker("Due Date", selection: $todoItem.dueDate, displayedComponents: .date)
            }
            .navigationTitle("Add Todo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading){
                    Button("Close"){
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button("Add"){
                        if (!todoItem.task.isEmpty){
                            context.insert(todoItem)
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}
//
//#Preview {
//    AddTodoSheet()
//}
