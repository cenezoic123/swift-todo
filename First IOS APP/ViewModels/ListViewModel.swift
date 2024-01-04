//
//  ListViewModel.swift
//  First IOS APP
//
//  Created by Hope Nadela on 1/1/24.
//

import Foundation


class ListViewModel: ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems(){
        let newItems = [
            ItemModel(title: "This is the first task",isCompleted: true),
            ItemModel(title: "This is the second task",isCompleted: false),
            ItemModel(title: "This is the third task",isCompleted: true)
        ]
    
        items.append(contentsOf: newItems)
    }
    
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(item: ItemModel){
        items.append(item)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {
            $0.id == item.id
        }){
            items[index] = item.updateCompletion()
        }
    }
}
