//
//  ContentsView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI

struct ContentsView: View {
    var body: some View {
        HStack {
            HeadingTextView(heading: "Education")
            ContentTextView(content: "Random")
        }
    }
}

#Preview {
    ContentsView()
}
