//
//  ListAppView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI

struct ListAppView: View {
    
    @State var list: [ModelData] = []
    @State var showView = false
    
    var body: some View {
        @State var dummy = list
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(Array(list.enumerated()), id: \.1.id) { (index,person) in
                        NavigationLink(destination: EditView(person: person), isActive: $showView) {
                            
                            ProfileCellView(person: person, actionOnDel: {
                                actionOnDelete(index: index)
                            }, actionOnEdit: {
                                showView = true
                            })
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Profiles")
                        .font(.title)
                        .foregroundStyle(Color("HeadingColor"))
                }
                ToolbarItem(placement: .topBarTrailing ) {
                    Button(action: actionOnAddButton, label: {
                        Image(systemName: "plus")
                            .font(.title2)
                            .padding(.trailing)
                            .foregroundColor(Color("HeadingColor"))
                    })
                }
            }
        }
    }
    
    private func actionOnAddButton() {
        list.append( [ModelData(name: "Ram"), ModelData(name: "Mani"), ModelData(name: "Sai"), ModelData(name: "Babu"), ModelData(name: "Raj"), ModelData(name: "Ram")].randomElement()!)
    }
    
    private func actionOnDelete(index: Int) {
        list.remove(at: index)
    }
    
    private func actionOnEdit(person: ModelData) {
        NavigationLink(
            destination: EditView(person: person),
            isActive: .constant(true),
            label: EmptyView.init
        )
    }
    
}

#Preview {
    ListAppView()
}
