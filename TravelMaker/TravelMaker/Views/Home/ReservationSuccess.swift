//
//  ReservationSuccess.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/20/24.
//

import SwiftUI

struct ReservationSuccess: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        
        Image(systemName: "checkmark.seal.fill")
            .resizable()
            .frame(width: 60.0, height: 60.0)
            .foregroundColor(Color.green)
        Text("예약이 완료되었습니다")
        
        Button(action: {
            isShowing.toggle()
        }, label: {
            ButtonBackground(text: "메인으로")
                .padding(20)
        })
        
    }
}

