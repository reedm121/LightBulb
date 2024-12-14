//
//  RandNumberView.swift
//  LightBulb
//
//  Created by Reed Gantz on 12/13/24.
//

import SwiftUI

struct RandNumberView: View {
    @State var randomNumber = Int.random(in: 1...100)
    
    var body: some View {
        Text("@State: \(randomNumber)")
        Button("Generate number 1-100"){
            randomNumber = Int.random(in: 1...100)
        }.buttonStyle(.bordered)
        
        NavigationLink("Number plus one View >",
                       destination: NumberPlusOneView(number: $randomNumber)).padding()
    }
}

struct NumberPlusOneView: View {
    @Binding var number: Int
    
    var body: some View {
        Text("@Binding: \(number)")
        Button("+1 to number"){
            number += 1
        }.buttonStyle(.bordered)
    }
}

#Preview {
    NavigationStack {
        RandNumberView()
    }
}
