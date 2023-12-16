//
//  ProfileCellView.swift
//  RamProtfolio
//
//  Created by Softasuave on 16/12/23.
//

import SwiftUI

struct ProfileCellView: View {
    
    var person = ModelData()
    var actionOnDel: () -> Void
    var actionOnEdit: () -> Void
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color("HeadingColor").opacity(0.8),lineWidth: 2)
                .frame(height: 100)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
            
            HStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .stroke(lineWidth: 2)
                    .foregroundColor(Color.black.opacity(0.7))
                    .frame(width: 45, height: 45)
                    .overlay {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                    .padding(.leading, 35)
                
                
                VStack(alignment: .center) {
                    CellTextView(text: person.name, title: true)
                    CellTextView(text: person.jobTitle)
                }
                .padding(.leading, 10)
                
                VStack(alignment: .center, spacing: 15) {
                    Button(action: actionOnEdit) {
                        ButtonTextView(text: "Edit")
                    }
                    
                    Button(action: actionOnDel) {
                        ButtonTextView(text: "Delete", delete: true)
                    }
                }
                .padding(.trailing, 40)
            }
        }
    }
}


struct ButtonTextView: View {
    
    var text = "button"
    var delete = false
    
    var body: some View {
        Text(text)
            .frame(height: 20)
            .foregroundColor(delete ? .red : .blue)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("HeadingColor").opacity(0.5),lineWidth: 2)
                    .frame(width: 70,height: 25)
                    .background(Color("HeadingColor").opacity(0.1))
            }
    }
}

struct CellTextView: View {
    var text = ""
    var title = false
    
    var body: some View {
        Text(text)
            .font(title ? .title : .body)
            .foregroundColor(Color.black.opacity(0.7))
            .fontWeight(title ? .semibold : .regular)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

    #Preview {
        ProfileCellView(actionOnDel: {}, actionOnEdit: {})
    }
