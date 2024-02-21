//
//  GuidePackageView.swift
//  TravelMaker
//
//  Created by 기 표 on 2/20/24.
//

import SwiftUI

struct GuidePackageView: View {
    
    var tagIndex : Int
    let userStore = UserModelStore().userStore
    var travels: [TravelModel] = TravelModelStore().travelStore
    
    var body: some View {
                
                VStack(alignment: .leading) {
                    Text("게스트들이 선호하는 가이드 상품")
                        .font(.title2)
                        .fontWeight(.heavy)
                        //.padding()
                    ForEach(filteredData(index: tagIndex)) {travel in
                        NavigationLink {
                            DetailView()
                        } label: {
                            VStack (alignment: .leading){
                                Image(travel.imageName) // 여행지 사진
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 200)
                                    .cornerRadius(10)
                                    .padding(.vertical, 10.0)
                                
                                Section{
                                    HStack {
                                        Image(travel.guideProfileImage) // 가이드 프로필 이미지
                                            .resizable()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                            .shadow(radius: 5)
                                            .padding(.bottom, 10.0)
                                        VStack (alignment: .leading) {
                                            Text("\(travel.author.name) 가이드님의 아름다운 휴양지") // 가이드 이름
                                                .font(.headline)
                                                .padding(.bottom, 1)
                                            HStack {
                                                //Spacer()
                                                Text("￦\(travel.price ?? 0)") // 가격
                                                    .fontWeight(.bold)
                                                    .font(.system(size: 25))
                                                
                                            }
                                            
                                        }
              
                                    }
                                    .padding(.bottom, 10)
                                }
                                
                                Section{
                                    Text(travel.title) // 피드 제목
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    
                                    VStack(alignment: .leading) {
                                        Text("위치: \(travel.location)") // 위치
                                            .font(.subheadline)
                                        Text("2박3일") // 위치
                                            .font(.subheadline)
                                        
                                    }
                                    
                                }
                                
                               // Divider()
                            }
                        }
                
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .foregroundColor(Color.tmBlack)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 5)
                    
                }
                //.padding(.vertical, 100)
                .padding(.horizontal, 5)
            
        
    }
    
    
    func filteredData(index: Int) -> [TravelModel] {
        if index > 0 {
            return travels.filter { $0.tag == Tag.allCases[index] }
        } else {
            return travels
        }
    }
}

#Preview {
    GuidePackageView(tagIndex: 1)
}
