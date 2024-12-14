//
//  SwitchView.swift
//  LightBulb
//
//  Created by Reed Gantz on 12/13/24.
//

import SwiftUI

struct SwitchView: View {
    @Binding var isLightbulbOn: Bool
    
    var body: some View {
        ZStack {
            Color(isLightbulbOn ? .white : .gray)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Toggle("isOn", isOn: $isLightbulbOn)
                    .labelsHidden()
                
                Text(!isLightbulbOn ? "Off" : "On")
            }
        }.navigationTitle("SwitchView")
    }
}

#Preview {
    @Previewable @State var isOn: Bool = false
    
    NavigationStack{
        SwitchView(isLightbulbOn: $isOn)
    }
}
