//
//  DiceRoller.swift
//  RollAndList
//
//  Created by Venkatesh Munaga on 19/05/26.
//

import SwiftUI

struct DiceRoller: View {
    @State private var diceCount: Int = 1
    var body: some View {
        VStack(spacing: 30) {
            Text("Roll Dice")
                .font(.largeTitle.lowercaseSmallCaps())
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            HStack {
                ForEach(1...diceCount, id: \.description) { _ in
                    Dice()
                }
            }
            
            HStack {
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    diceCount += 1
                }
                .disabled(diceCount == 5)
                
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    diceCount -= 1
                }
                .disabled(diceCount == 1)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
    }
}

#Preview {
    DiceRoller()
}
