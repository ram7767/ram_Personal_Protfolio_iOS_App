//
//  SkillsView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI

struct SkillsView: View {
    let skill: String
    var body: some View {
        HStack {
            Image(systemName: "chevron.right.2")
            Text(skill)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    SkillsView(skill: "Test1")
}
