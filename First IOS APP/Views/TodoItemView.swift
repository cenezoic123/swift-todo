//
//  TodoItemView.swift
//  First IOS APP
//
//  Created by Hope Nadela on 1/1/24.
//

import SwiftUI

struct TodoItemView: View {
    
    let item: ItemModel
    
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    TodoItemView(item: ItemModel(title: "This is my first task", isCompleted: false))
}
