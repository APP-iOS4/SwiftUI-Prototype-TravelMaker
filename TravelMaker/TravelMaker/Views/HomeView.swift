//
//  HomeView.swift
//  TravelMaker
//
//  Created by 기 표 on 2/20/24.
//

import SwiftUI

struct HomeView: View {
    let travelStore: [TravelModel] = TravelModelStore().travelStore
    var body: some View {
        NavigationStack {
            VStack{
                VStack {
                    Text("Travel Maker")
                        .font(.largeTitle)
                        .foregroundStyle(Color.tmBlue2)
                    SearchBar() // 검색
                        .padding(.bottom, 20.0)
                }
                .padding(.horizontal)
                Divider()
                VStack(alignment: .leading){
                    Text("게스트들이 선호하는 가이드 상품")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.leading , 20.0)
                        .padding(.top, 10.0)
                    CategoryView()
                }
                
                
                
            }
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
        }
        
    }
}


#Preview {
    HomeView()
}
