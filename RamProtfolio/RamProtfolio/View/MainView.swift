//
//  MainView.swift
//  RamProtfolio
//
//  Created by Softasuave on 18/11/23.
//

import SwiftUI

struct MainView: View {
    @Environment(\.modelContext) private var modelContext
    var body: some View {
        
        
        @State var  isTapped = true
        
        NavigationStack {
            ZStack {
                Color(.systemBlue)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 40))
                            .frame(width: 40, height: 40)
                            .padding(.all)
                        Text("Ram")
                            .font(.title)
                        Spacer()
                    }
                    .frame(height: 60)
                    .background(Color.red)
                    VStack {
                        HeadingTextView(heading: "About Me")
                        ContentTextView(content: "Adbout me")
                    }
                    ContentsView()
                    VStack {
                        HeadingTextView(heading: "Skills")
                        HStack {
                            NavigationLink(destination: ListAppView()) {
                                SkillsView(skill: "Note App")
                            }
                        }
                        .padding()
                    }
                    .background()
                    .padding(.top)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MainView()
}
