//
//  WelcomePage.swift
//  RollAndList
//
//  Created by Venkatesh Munaga on 19/05/26.
//

import SwiftUI

struct WelcomePage: View {
    @AppStorage("hasSeenWelcome") private var hasSeenWelcome = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "gamecontroller.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                
            Text("Welcome to RollAndList")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
            
            Button {
                hasSeenWelcome = true
            } label: {
                Text("Done")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.bottom, 20)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.accent)
    }
}

#Preview {
    WelcomePage()
}
