//
//  ReservationSuccess.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/20/24.
//

import SwiftUI

struct ReservationSuccess: View {
    var body: some View {
        NavigationStack{
            
            Image(systemName: "checkmark.seal.fill")
                .resizable()
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(Color.green)
            Text("예약이 완료되었습니다")
            VStack {
                NavigationLink(destination: MyTravelView())) {
                    ButtonBackground(text: "예약내역확인하기")
                        .padding(.top, 50.0)
                        .frame(width: 300.0)
                }
            }
            
        }
    }
}

#Preview {
    ReservationSuccess()
}
