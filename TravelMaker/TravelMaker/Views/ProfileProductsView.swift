//
//  ProfileProductsView.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import SwiftUI

struct ProfileProductsView: View {
    var body: some View {
        
        NavigationStack {
            NavigationLink(destination: DetailView(), label: {
                VStack(alignment: .leading) {
                    Image("yeomiji")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                    Text("자연을 즐기는 장가계")
                        .foregroundStyle(.tmBlack)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
//                    Button(action: {
//                        
//                    }, label: {
//                       ButtonBackground(text: "가이드 상품 추가하기")
//                    })
//                    .padding(.top, 50)
                    Spacer()
                    
                }
                .padding()
                .navigationTitle("게시한 가이드 상품 & 일정")
            })
        }
            
    }
}

#Preview {
    ProfileProductsView()
}
