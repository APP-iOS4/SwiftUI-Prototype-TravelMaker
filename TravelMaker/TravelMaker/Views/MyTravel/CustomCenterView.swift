//
//  CustomCenterView.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/22/24.
//

import SwiftUI

struct CustomCenterView: View {
    var body: some View {
        Image(systemName: "teletype.answer")
            .frame(width: 100.0, height: 100.0)
        Text("예약 문제 발생시 0000-0000으로 전화주세요.")
        
    }
}

#Preview {
    CustomCenterView()
}
