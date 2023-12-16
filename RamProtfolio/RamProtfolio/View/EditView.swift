//
//  EditView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI
import SwiftData

struct EditView: View {
    
    var person = ModelData()
    var viewMode = ListAppView()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Text(person.name)
        }
        .navigationBarBackButtonHidden(true)
        .toolbarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Edit Screen")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {}) {
                    Text("Save")
                }
            }
            ToolbarItem(placement: .topBarLeading) {
                Button(action: actionOnCancel) {
                    Text("Cancel")
                }
            }
        }
    }
    
    private func actionOnCancel() {
        viewMode.showView = false
        self.presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    EditView()
}
