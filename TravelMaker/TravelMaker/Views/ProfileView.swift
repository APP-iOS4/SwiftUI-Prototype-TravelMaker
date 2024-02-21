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
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                            .foregroundStyle(.yellow)
                        Text("4.8")
                            .foregroundStyle(.tmBlack)
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                    }
                    
//                    ButtonBackground(text: "프로필 수정")
//                        .frame(width: 120)
                    
                    
                }//HStack
                .padding()
                
                VStack(alignment: .leading) {
                    
                        
                    HStack {
                        Text("지역: \(user.location)")
                            .foregroundStyle(.tmBlack)
                            .font(.system(size: 20))
                            .padding(8)
                        Spacer()
                        Text("현지 거주 10년")
                            .padding(8)
                            .background(.tmYellow1)
                    }
                    
                    Divider()
                        .background(.tmGray)
                    Text("성별: \(user.gender)")
                        .foregroundStyle(.tmBlack)
                        .font(.system(size: 20))
                        .padding(8)
                    Divider()
                        .background(.tmGray)
                    Text("나이: \(user.age)")
                        .foregroundStyle(.tmBlack)
                        .font(.system(size: 20))
                        .padding(8)
                    Divider()
                        .background(.tmGray)
                    Text("사용언어 : \(user.language)")
                        .foregroundStyle(.tmBlack)
                        .font(.system(size: 20))
                        .padding(8)
                    Divider()
                        .background(.tmGray)
                    NavigationLink(destination: ProfileProductsView(), label: {
                        HStack {
                            Text("게시한 상품 & 일정")
                                .font(.system(size: 20))
                            Spacer()
                            Image(systemName: "greaterthan")
                                .foregroundStyle(.tmGray)
                        }
                        .foregroundStyle(.tmBlack)
                        .padding(8)
                    })
                    Divider()
                        .background(.tmGray)
                    
                }
                .padding()
                
                
                
                Spacer()
                
            }//VStack
            .navigationTitle("메이커 프로필")
        }
    }
}

#Preview {
    ProfileView()
}
