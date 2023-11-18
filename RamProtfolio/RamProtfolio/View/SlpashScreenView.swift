//
//  SlpashScreenView.swift
//  RamProtfolio
//
//  Created by Softasuave on 17/11/23.
//

import SwiftUI

struct SlpashScreenView: View {
    @State var opacity = 0.5
    @State var isActive = false
    @State var size = 0.8
    
    var body: some View {
        if isActive {
            MainView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 80)).padding(.all)
                    Text("Hi, There...   I'm Ram")
                        .font(.system(size: 20))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.0)) {
                        self.size = 0.9
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    SlpashScreenView()
}
