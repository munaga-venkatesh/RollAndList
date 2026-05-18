//
//  PickAName.swift
//  RollAndList
//
//  Created by Venkatesh Munaga on 18/05/26.
//

import SwiftUI

struct PickAName: View {
    @State private var names: [String] = ["Bob", "Mandi", "Summer", "John"]
    @State private var nameToAdd: String = ""
    @State private var pickedName: String = ""
    @State private var shouldRemoveName: Bool = false
    
    var body: some View {
        VStack {
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundStyle(.accent)
            
            List(names, id: \.description) { name in
                Text(name)
            }
            .listStyle(.plain)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add a name", text: $nameToAdd)
                .autocorrectionDisabled(true)
                .onSubmit {
                    if !nameToAdd.isEmpty && nameToAdd.trimmingCharacters(in: .whitespaces).count > 3 {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            
            Divider()
            
            Toggle("Remove a name", isOn: $shouldRemoveName)
                .toggleStyle(SwitchToggleStyle(tint: .accentColor))
            
            Button {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    if shouldRemoveName {
                        names.removeAll { name in
                            return (name == randomName)
                        }
                    }
                }
            } label: {
                Text("Pick random name")
                    .font(.title2)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)

                
        }
        .padding()
    }
}

#Preview {
    PickAName()
}
