//
//  HomeView.swift
//  TravelMaker
//
//  Created by 기 표 on 2/20/24.
//

import SwiftUI

struct HomeView: View {
    @State var isShowing: Bool = false
    
    @State private var isTagSelected: [Bool] = Array(repeating: false, count: 7)
    private let tagImages: [String] = ["map","fork.knife.circle", "building.columns", "figure.pool.swim", "photo.artframe", "binoculars", "tree"]
    private let tagNames: [String] = ["전체","맛집", "예술", "레저", "포토", "문화", "자연"]
    @State var tagIndex: Int = 0
   // let travel = TravelModelStore().travelStore
    
    let userStore = UserModelStore().userStore
    var travels: [TravelModel] = TravelModelStore().travelStore
    
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
                    //MARK: - 카테고리
                    VStack {
                        // 버튼 목록
                        HStack {
                            ForEach(0..<tagImages.count, id:\.self) { index in
                                Button {
                                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                    isTagSelected = Array(repeating: false, count: 7)
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
                                            .foregroundColor(isTagSelected[index] ? .tmBlue2 : .tmGray)
                                        
                                        // 테마 이름
                                        Text(tagNames[index])
                                            .foregroundColor(isTagSelected[index] ? .tmBlue2 : .tmGray)
                                            .padding(10)
                                            .cornerRadius(10)
                                            .fontWeight(.bold)
                                            .font(.system(size: 15))
                                    }
                                }
                            }
                        }
                        //GuidePackageView(tagIndex: tagIndex)
                        VStack {
                            //Text("제주도에서 많이 찾는 여행 상품")
                            //MARK: - 여행 항목
                            ForEach(filteredData(index: tagIndex)) {travel in
                                GuidePackageView(travel: travel, isShowing: isShowing)
                                
                            }
                            .padding(5)
                        }
                    }
                }
            }
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
        } 
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
    HomeView()
}
