//
//  MyTravelSubView.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import SwiftUI

struct MyTravelSubView: View {
    var name: String = "왕링링 가이드님의 아름다운 휴양지"
    var price: Int = 130000
    var image: String = "subway"
    var body: some View {
        VStack{
            HStack {
                Image("\(image)")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                    .padding(.trailing, 20)
                VStack {
                    Text("\(name)")
                        .foregroundStyle(.tmBlack)
                        .padding(.bottom, 10)
                    HStack {
                        Text("₩\(price)")
                            .foregroundStyle(.tmBlack)
                            .fontWeight(.bold)
                        Spacer()
                        Text("결제완료")
                            .foregroundStyle(.tmBlack)
                            .fontWeight(.bold)
                    }
                }
            }
            HStack {
                Button(action: {
                    //DetailView
                }, label: {
                    ButtonWhite(text: "예약내역 상세")
                })
                Button(action: {
                    // 뷰를 만들어야 하나
                }, label: {
                    ButtonBackground(text: "리뷰 남기기")
                })
                
               
            }
            
        }
        .padding()
    }
}

#Preview {
    MyTravelSubView()
}
