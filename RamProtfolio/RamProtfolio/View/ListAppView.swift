//
//  ListAppView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI
import SwiftData

struct ListAppView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var persons: [Persons]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(persons) { person in
                    NavigationLink(destination: EditView(person: person)) {
                        HeadingTextView(heading: person.name)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            .frame(maxWidth: .infinity)
        } 
        .navigationTitle("Note App")
    }
    
    private func addItem() {
        withAnimation {
            
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(persons[index])
            }
        }
    }
}

#Preview {
    ListAppView()
        .modelContainer(for: Persons.self, inMemory: true)
}
