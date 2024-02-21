//
//  ProfileProductsView.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import SwiftUI

struct ProfileProductsView: View {
    var travel: TravelModel = TravelModelStore().travelStore.first!
    var body: some View {
        
        NavigationStack {
            NavigationLink(destination: DetailView(travel: travel), label: {
                VStack(alignment: .leading) {
                    Image("yeomiji")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                    Text("자연을 즐기는 장가계")
                        .foregroundStyle(.tmBlack)
                        .fontWeight(.bold)
                        .font(.system(size: 23))
                    
                    Spacer()
                    
                }
                .padding()
                .navigationTitle("게시한 상품 & 일정")
            })
        }
            
    }
}

#Preview {
    ProfileProductsView()
}
