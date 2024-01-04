//
//  ListView.swift
//  First IOS APP
//
//  Created by Hope Nadela on 1/1/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    

    var body: some View {
        List{
            ForEach(listViewModel.items) { item in
                TodoItemView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
            
    }

}

#Preview {
    NavigationView{
        ListView()
    }
}

