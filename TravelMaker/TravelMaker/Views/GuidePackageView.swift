//
//  GuidePackageView.swift
//  TravelMaker
//
//  Created by 기 표 on 2/20/24.
//

import SwiftUI

struct GuidePackageView: View {
//    var travelModel: TravelModel
    let userStore = UserModelStore().userStore
    let travel = TravelModelStore().travelStore
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("게스트 선호 가이드 특별추천")
                .font(.system(size: 25))
                .fontWeight(.heavy)
            
            Image(travel[0].imageName[0]) // 여행지 사진
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
            
            HStack {
                Image(travel[0].guideProfileImage) // 가이드 프로필 이미지
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 0.2)
                    }
                    .shadow(radius: 5)
                
                Text("\(travel[0].author.name) 가이드님의 아름다운 휴양지") // 가이드 이름
                    .font(.headline)
                Spacer()
                Text("￦ \(travel[0].price ?? 0)") // 가격
                    .fontWeight(.bold)
            }
            
            Text(travel[0].title) // 피드 제목
                .font(.title2)
                .fontWeight(.bold)
            
            VStack(alignment: .leading, spacing: 25) {
                Text("위치: \(travel[0].location)") // 위치
                    .font(.subheadline)
                
                Text(travel.description) // 설명
                    .font(.body)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .foregroundColor(.black)
        
    }
}

#Preview {
    GuidePackageView()
}
