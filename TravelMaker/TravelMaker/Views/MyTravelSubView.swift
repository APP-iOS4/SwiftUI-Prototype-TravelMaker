//
//  MyTravelSubView.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import SwiftUI

struct MyTravelSubView: View {
    var name: String = "왕링링 메이커님의 아름다운 휴양지"
    var price: Int = 130000
    var image: String = "subway"
    var state: String = "결제완료"
    var body: some View {
        VStack {
            HStack {
                Image("\(image)")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                    .padding(.trailing, 20)
                VStack(alignment: .leading) {
                    Text("\(name)")
                        //.lineLimit(1)
                        .foregroundStyle(.tmBlack)
                        .padding(.bottom, 10)
                    HStack {
                        Text("₩\(price)")
                            .foregroundStyle(.tmBlack)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(state)")
                            .foregroundStyle(.tmBlack)
                            .fontWeight(.bold)
                    }
                }
            }
            HStack {
                Button(action: {
                    //영수증 느낌
                }, label: {
                    ButtonWhite(text: "예약내역 상세")
                })
                Button(action: {
                    // 뷰를 만들어야 하나
                }, label: {
                    if state == "여행완료" {
                        ButtonBackground(text: "리뷰 남기기")
                    } else {
                        
                    }
                    
                })
                
               
            }
            
        }
        .padding()
    }
}

#Preview {
    MyTravelSubView()
}
