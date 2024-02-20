//
//  ProfileView.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import SwiftUI

struct ProfileView: View {
    var user = UserModelStore().userStore.first!
    //var user = UserModelStore().userStore.last!
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image("subway")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    Text("\(user.name)")
                        .foregroundStyle(.tmBlack)
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                        .padding()
                    Spacer()
                    
//                    ButtonBackground(text: "프로필 수정")
//                        .frame(width: 120)
                    
                    
                }//HStack
                .padding()
                
                VStack(alignment: .leading) {
                    Text("지역: \(user.location)")
                        .foregroundStyle(.tmBlack)
                        .font(.system(size: 20))
                        .padding(8)
                    Divider()
                        .background(.tmYellow2)
                    Text("성별: \(user.gender)")
                        .foregroundStyle(.tmBlack)
                        .font(.system(size: 20))
                        .padding(8)
                    Divider()
                    Text("나이: \(user.age)")
                        .foregroundStyle(.tmBlack)
                        .font(.system(size: 20))
                        .padding(8)
                    Divider()
                        .background(.tmYellow2)
                    Text("사용언어 : \(user.language)")
                        .foregroundStyle(.tmBlack)
                        .font(.system(size: 20))
                        .padding(8)
                    Divider()
                        .background(.tmYellow2)
                    NavigationLink(destination: ProfileProductsView(), label: {
                        HStack {
                            Text("게시한 가이드 상품 & 일정")
                                .font(.system(size: 20))
                            Spacer()
                            Image(systemName: "greaterthan")
                        }
                        .foregroundStyle(.tmBlack)
                        .padding(8)
                    })
                    Divider()
                        .background(.tmYellow2)
                    
                }
                .padding()
                
                
                
                Spacer()
                
            }//VStack
            .navigationTitle("프로필")
        }
    }
}

#Preview {
    ProfileView()
}
