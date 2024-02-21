//
//  CategoryView.swift
//  TravelMaker
//
//  Created by 기 표 on 2/20/24.
//

import SwiftUI

struct CategoryView: View {
    @State private var isTagSelected: [Bool] = Array(repeating: false, count: 6)
    private let tagImages: [String] = ["fork.knife.circle", "building.columns", "figure.pool.swim", "photo.artframe", "binoculars", "tree"]
    private let tagNames: [String] = ["맛집", "예술", "레저", "포토", "문화", "자연"]
    @State var tagIndex: Int = 0
    let travel = TravelModelStore().travelStore
    var body: some View {
        VStack {
            // 버튼 목록
            HStack {
                ForEach(0..<tagImages.count, id:\.self) { index in
                    Button {
                        isTagSelected = Array(repeating: false, count: 6)
                        isTagSelected[index] = true // 토글
                        tagIndex = index
                        
                    } label: {
                        Spacer()
                        VStack {
                            // 테마 아이콘
                            Image(systemName: tagImages[index])
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(isTagSelected[index] ? .tmBlue1 : .tmGray)
                            
                            // 테마 이름
                            Text(tagNames[index])
                                .foregroundColor(isTagSelected[index] ? .tmBlue1 : .tmGray)
                                .padding(10)
                                .cornerRadius(10)
                                .fontWeight(.bold)
                        }
                    }
                }
                Spacer()
                
            }
            GuidePackageView(tagIndex: tagIndex)
           
        }
    }
    }


#Preview {
    CategoryView()
}
