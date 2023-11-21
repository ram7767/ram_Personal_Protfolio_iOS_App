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
    @Query private var persons: [Person]
    
    var body: some View {
        NavigationStack {
            if persons.count > 0 {
                List {
                    ForEach(persons) { person in
                        NavigationLink(destination: EditView(person: person, skills: 0, exp: 0, edu: 0)) {
                            HeadingTextView(heading: person.name)
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
            } else {
                VStack {
                    Image(systemName: "note")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    Text("Add new Person")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.title)
                        .padding()
                }
                .frame(height: 200, alignment: .center)
            }
            
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
        .navigationTitle("Note App")
    }
    
    private func addItem() {
        withAnimation {
            let newPerson = Person(id: UUID().uuidString, name: "Change as your whish", details: "Edit")
            modelContext.insert(newPerson)
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
        .modelContainer(for: Person.self, inMemory: true)
}
