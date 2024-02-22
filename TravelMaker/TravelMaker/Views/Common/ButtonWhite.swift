//
//  ButtonWhite.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import Foundation
import SwiftUI

struct ButtonWhite: View {
    var text: String
    
    var body: some View {
        Text("\(text)")
            .frame(minWidth: 0, maxWidth: .infinity)
            .foregroundStyle(.tmBlack)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(.tmYellow1, lineWidth: 2)
            )
    }
}

#Preview {
    ButtonWhite(text: "Hello World")
}
