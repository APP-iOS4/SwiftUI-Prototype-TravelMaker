//
//  HomeView.swift
//  TravelMaker
//
//  Created by 기 표 on 2/20/24.
//

import SwiftUI

struct HomeView: View {
    @State var path: Bool = false
    let travelStore: [TravelModel] = TravelModelStore().travelStore
    var body: some View {
        NavigationStack {
            VStack{
                VStack(spacing: 5) {
                    Text("Travel Maker")
                        .font(.largeTitle)
                        .foregroundStyle(Color.tmBlue2)
                    SearchBar() // 검색
                        .padding(.bottom, 3)
                }
                .padding(.horizontal)
                Divider()
                ScrollView{
                    VStack(alignment: .leading){
                        CategoryView(path: path)
                    }
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
