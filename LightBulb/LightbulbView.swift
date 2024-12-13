//
//  LightbulbView.swift
//  LightBulb
//
//  Created by Reed Gantz on 12/13/24.
//

import SwiftUI

struct LightbulbView: View {
    @State var isOn: Bool = true
    
    var body: some View {
        ZStack{
            Color(isOn ? .white : .gray)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack {
                    Image(systemName: isOn ? "lightbulb.fill" :"lightbulb")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                        .symbolRenderingMode(.palette) // Use palette mode
                        .foregroundStyle(
                            .yellow,    // Main fill color
                            .black   // Secondary detail color
                        )
                    
                    Image(systemName: "lightbulb")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                        
                }.onTapGesture {
                    isOn.toggle()
                }
                
                Text("isOn: \(isOn)")
                    .padding()
                
                NavigationLink("Go to switch >", destination: SwitchView(isLightbulbOn: $isOn))
            }
            
        }
    }
}

#Preview {
    NavigationStack{
        LightbulbView()
    }
}
