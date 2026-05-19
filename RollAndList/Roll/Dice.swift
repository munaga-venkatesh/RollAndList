//
//  Dice.swift
//  RollAndList
//
//  Created by Venkatesh Munaga on 19/05/26.
//

import SwiftUI

struct Dice: View {
    @State private var pipeNumber: Int = 1
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(pipeNumber).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.accent, .black)
            
            Button("Roll") {
                pipeNumber = Int.random(in: 1...6)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    Dice()
}
