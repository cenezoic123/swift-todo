//
//  ItemModel.swift
//  First IOS APP
//
//  Created by Hope Nadela on 1/1/24.
//

import Foundation


struct ItemModel: Identifiable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel{
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
