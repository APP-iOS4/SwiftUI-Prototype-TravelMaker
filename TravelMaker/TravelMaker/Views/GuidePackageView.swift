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
//        NavigationStack {
            ScrollView{
                
                VStack(alignment: .leading) {
                    
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
                                            .frame(width: 50, height: 50)
                                            .clipShape(Circle())
                                            .overlay {
                                                Circle().stroke(.gray, lineWidth: 0.2)
                                            }
                                            .shadow(radius: 5)
                                            .padding(.bottom, 10.0)
                                        
                                        VStack (alignment: .leading) {
                                            Text("\(travel.author.name) 가이드님의 아름다운 휴양지") // 가이드 이름
                                                .font(.headline)
                                                .padding(.leading, 10.0)
                                            Text("￦ \(travel.price ?? 0)") // 가격
                                                .fontWeight(.bold)
                                        }
                                        Spacer()
                                    }
                                }
                                
                                Section{
                                    Text(travel.title) // 피드 제목
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    
                                    VStack(alignment: .leading, spacing: 25) {
                                        Text("위치: \(travel.location)") // 위치
                                            .font(.subheadline)
                                        
                                        Text(travel.description) // 설명
                                            .font(.body)
                                            .lineLimit(2)
                                    }
                                    
                                }
                                
                                Divider()
                            }
                        }
                
                    }
                    
                }
            }
//        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .foregroundColor(Color.tmBlack)
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
