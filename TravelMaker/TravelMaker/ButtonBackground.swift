//
//  ButtonBackground.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import SwiftUI

struct ButtonBackground: View {
    var text: String
    
    var body: some View {
        ZStack{
            Capsule()
                .foregroundStyle(.tmYellow1)
            Text("\(text)")
                .foregroundStyle(.tmBlack)
        }
        .frame(height: 50)
        
    }
}

#Preview {
    ButtonBackground(text: "Hello World")
}
