//
//  HeadingTextView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI

struct HeadingTextView: View {
    let heading: String
    
    var body: some View {
        Text(heading)
            .font(.title)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
    }
}

#Preview {
    HeadingTextView(heading: "Hi there")
}
