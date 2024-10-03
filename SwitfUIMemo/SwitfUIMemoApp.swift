//
//  SwitfUIMemoApp.swift
//  SwitfUIMemo
//
//  Created by KimRin on 10/4/24.
//

import SwiftUI

@main
struct SwitfUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
