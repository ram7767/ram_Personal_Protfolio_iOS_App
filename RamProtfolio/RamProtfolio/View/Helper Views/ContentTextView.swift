//
//  ContentTextView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI

struct ContentTextView: View {
    let content: String
    var body: some View {
        Text("      "+content)
            .font(.system(size: 14))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
    }
}

#Preview {
    ContentTextView(content: "Text hdsjkfkbakhds nagjkbdsjkfgb a najbdfjkb kbak klngkjbaskdbg ")
}
