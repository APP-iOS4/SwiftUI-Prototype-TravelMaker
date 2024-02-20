//
//  MyTravelView.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import SwiftUI

struct MyTravelView: View {
    var body: some View {
        NavigationStack {
            VStack {
                MyTravelSubView(name: "전유진 가이드님의 아름다운 장가계", price: 200000, image: "subway")
                Divider()
                    .background(.tmYellow1)
                MyTravelSubView(name: "김기표 가이드님의 아름다운 서울맛집투어", price: 20000, image: "subway")
                Divider()
                    .background(.tmYellow1)
                
                Spacer()
                Text("예약 내역에 문제가 있나요?")
                Text("고객센터 도움받기")
                    .underline()
            }
            .padding()
            .navigationTitle("가이드 예약 내역")
        }
    }
}

#Preview {
    MyTravelView()
}
