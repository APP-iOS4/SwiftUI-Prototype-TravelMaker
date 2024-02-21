//
//  UserProfileView.swift
//  TravelMaker
//
//  Created by 이우석 on 2/21/24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        NavigationStack {
            
            List{
                HStack(spacing: 20) {
                    Image("leasure3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 5){
                        Text("이우석")
                            .foregroundStyle(.tmBlack)
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                            
                        Text(verbatim: "abcdef@example.com")
                            .foregroundStyle(.tmBlack)
                            
                    }
                }
                .padding(5)
                
                Text("프로필 설정")
                
                NavigationLink{
                    MyTravelView()
                } label: {
                    Text("예약 내역")
                }
                
                Text("앱 환경 설정")
                Text("로그아웃")
                    .foregroundStyle(.red)
                
            }
            .navigationTitle("나의 프로필")
            .listStyle(.plain)
        }
    }
}

#Preview {
    UserProfileView()
}
