//
//  EditView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI
import SwiftData

struct EditView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.modelContext) private var modelContext
    @State var person: Person
    @State var skills: Int
    @State var exp: Int
    @State var edu: Int
    
    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {
                    Text("Name: ")
                        .padding()
                        .font(.title2)
                    TextField("Enter name" ,text: $person.name)
                        .padding()
                }
                .frame( maxWidth: .infinity)
                .padding(.all)
                HStack {
                    Text("Details: ")
                        .padding()
                        .font(.title2)
                    TextField("name", text: $person.details)
                        .padding()
                }
                .frame( maxWidth: .infinity)
                .padding(.all)
                VStack {
                    HStack {
                        Text("Add Skills")
                        Spacer()
                        Button {
                            skills += 1
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                    .padding()
                    List {
                        ForEach(0..<skills, id: \.self) { _ in
                            Text("Hi")
                            //TODO: - adding new skills
                        }
                        .onDelete(perform: deleteItems)
                    }
                }
                Spacer()
            }
            .toolbar {
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "add")
                    }
                }
            }
        }
    }
    
    private func addItem() {
        withAnimation {
            modelContext.insert(person)
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            skills -= 1
        }
    }
}

#Preview {
    EditView(person: Person(id: "501", name: "Ram", details: "Hello"), skills: 0, exp: 0, edu: 0)
}
