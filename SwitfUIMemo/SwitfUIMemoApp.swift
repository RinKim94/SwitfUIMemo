//
//  SwitfUIMemoApp.swift
//  SwitfUIMemo
//
//  Created by KimRin on 10/4/24.
//

import SwiftUI

@main
struct SwitfUIMemoApp: App {
    
    @StateObject var store = MemoStore()
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
    }
}
