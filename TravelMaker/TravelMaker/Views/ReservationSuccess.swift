//
//  ReservationSuccess.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/20/24.
//

import SwiftUI

struct ReservationSuccess: View {
    var body: some View {
        
        Image(systemName: "checkmark.seal.fill")
            .resizable()
            .frame(width: 60.0, height: 60.0)
            .foregroundColor(Color.green)
        Text("예약이 완료되었습니다")
        
    }
}

#Preview {
    ReservationSuccess()
}
