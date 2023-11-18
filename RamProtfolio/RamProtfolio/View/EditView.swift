//
//  EditView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI

struct EditView: View {
    let person: Persons
    var body: some View {
        NavigationView {
            Text(person.name)
        }
    }
}

#Preview {
    EditView(person: Persons(id: 5, name: "dum", details: "njn"))
}
