//
//  RamProtfolioApp.swift
//  RamProtfolio
//
//  Created by Softasuave on 17/11/23.
//

import SwiftUI
import SwiftData

@main
struct RamProtfolioApp: App {
    var body: some Scene {
        WindowGroup {
            SlpashScreenView()
        }
        .modelContainer(sharedModelContainer)
    }
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Persons.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
}
