//
//  AddView.swift
//  First IOS APP
//
//  Created by Hope Nadela on 1/1/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(12)
                Button(action: {
                    
                    if(isInputValid()){
                        listViewModel.addItem(item: ItemModel(title: textFieldText, isCompleted: false))
                        presentationMode.wrappedValue.dismiss()
                    }
                    
                }, label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    
    func isInputValid() -> Bool{
        if(textFieldText.count < 3){
            alertTitle = "You must input atleast 3 characters"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
    }
}
