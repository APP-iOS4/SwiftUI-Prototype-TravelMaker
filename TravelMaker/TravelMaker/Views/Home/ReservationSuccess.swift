//
//  ReservationSuccess.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/20/24.
//

import SwiftUI

struct ReservationSuccess: View {
    @Binding var path: Bool
    
    var body: some View {
        
        Image(systemName: "checkmark.seal.fill")
            .resizable()
            .frame(width: 60.0, height: 60.0)
            .foregroundColor(Color.green)
        Text("예약이 완료되었습니다")
//        
//        NavigationLink(destination: HomeView(path: true), label: {
//            Text("홈으로")
//        })
        
//        Button(action: {
//            path = true
//        }, label: {
//            Text("홈으로")
//        })
//        

    }
}
//
//#Preview {
//    //ReservationSuccess()
//}
