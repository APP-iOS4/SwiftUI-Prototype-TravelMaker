//
//  ButtonGray.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/21.
//
import Foundation
import SwiftUI

struct ButtonGray: View {
    var text: String
    
    var body: some View {
        Text("\(text)")
            .frame(minWidth: 0, maxWidth: .infinity)
            .foregroundStyle(.tmBlack)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(.tmLightGray, lineWidth: 2)
            )
    }
}

#Preview {
    ButtonGray(text: "Hello World")
}

