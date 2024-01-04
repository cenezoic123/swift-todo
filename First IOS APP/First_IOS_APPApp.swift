//
//  First_IOS_APPApp.swift
//  First IOS APP
//
//  Created by Hope Nadela on 12/13/23.
//

import SwiftUI

@main
struct First_IOS_APPApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }.environmentObject(listViewModel)
        }
    }
}
