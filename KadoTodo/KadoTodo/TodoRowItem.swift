//
//  TodoRowItem.swift
//  KadoTodo
//
//  Created by Admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

struct TodoRowItem: View {
    var item: TodoItem
    @Environment(\.modelContext) var context
    var body: some View {
        HStack (spacing: 10){
            Image(systemName: item.isCompleted ? "circle.inset.filled" : "circlebadge")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(Color.accentColor)
                .onTapGesture {
                    item.isCompleted.toggle()
                    try? context.save()
                }
            VStack (alignment: .leading){
                Text(item.task)
                    .font(.title3)
                    .strikethrough(item.isCompleted)
                    .foregroundStyle(item.isCompleted ? .secondary : .primary)
                Text(item.dueDate, style: .date)
                    .font(.caption)
                    .foregroundStyle(item.isCompleted ? .secondary : .primary)
            }
        }
    }
}

#Preview {
    TodoRowItem(item: TodoItem())
}
