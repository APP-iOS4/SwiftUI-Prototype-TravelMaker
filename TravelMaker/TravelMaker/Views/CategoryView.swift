//
//  CategoryView.swift
//  TravelMaker
//
//  Created by 기 표 on 2/20/24.
//

import SwiftUI

struct CategoryView: View {
    @State private var isTagSelected: [Bool] = Array(repeating: false, count: Tag.allCases.count)
    let travel = TravelModelStore().travelStore
    var body: some View {
        VStack {
            
            // 버튼 목록
            HStack {
                ForEach(Tag.allCases.indices, id: \.self) { index in
                    // enum에 CaseIterable 붙여줘야함
                    Button(action: {
                        isTagSelected[index].toggle() // 토글
                    }) {
                        Spacer()
                        VStack {
                            // 테마 아이콘
                            Image(systemName: "\(tagToImage(tag: Tag.allCases[index]))")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundColor(isTagSelected[index] ? .tmBlue2 : .black)
                            
                            // 테마 이름
                            Text(tagToString(tag: Tag.allCases[index]))
                                .foregroundColor(isTagSelected[index] ? .tmBlue2 : .black)
                                .padding(10)
                                .cornerRadius(10)
                                .fontWeight(.bold)
                        }
                        .padding(3)
                    }
                }
                Spacer()
            }
            
            
            // 선택한 테마 별 패키지뷰
            ScrollView {
                LazyVStack(spacing: 35) {
                    ForEach(travel) { package in
                        GuidePackageView()
                            .padding(.horizontal)
                    }
                }
                .padding(.top, 5)
            }
        }
        .background(Color.white)
    }
    
    // 선택된 태그에 따라 필터링된 여행 패키지 배열
//    var filteredPackages: [TravelModel] {
//        var selectedTags: [Tag] = []
//        for (index, isSelected) in isTagSelected.enumerated() {
//            if isSelected {
//                selectedTags.append(Tag.allCases[index])
//            }
//        }
        
        //        if selectedTags.isEmpty {
        //            return travelStore
        //        } else {
        //            return travelStore.filter { selectedTags.contains($0.tag) }
        //        }
        //    }
//        return [TravelModel]
//    }
        // Tag enum 값을 문자열로 변환
        func tagToString(tag: Tag) -> String {
            switch tag {
            case .food:
                return "맛집"
            case .art:
                return "예술"
            case .leasure:
                return "레저"
            case .photo:
                return "포토"
            case .culture:
                return "문화"
            case .nature:
                return "자연"
            }
        }
        
        func tagToImage(tag: Tag) -> String {
            switch tag {
            case .food:
                return "fork.knife.circle"
            case .art:
                return "building.columns"
            case .leasure:
                return "figure.pool.swim"
            case .photo:
                return "photo.artframe"
            case .culture:
                return "binoculars"
            case .nature:
                return "tree"
            }
        }
    }

#Preview {
    CategoryView()
}
