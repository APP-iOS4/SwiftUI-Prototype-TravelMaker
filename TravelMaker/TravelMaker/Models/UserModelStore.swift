//
//  UserModelStore.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import Foundation

class UserModelStore {
    var userStore: [UserModel]
    
    init() {
        userStore = [
            UserModel(name: "홍길동", profileImage: "subway", gender: "남성", location: "제주도", language: ["한국어", "영어"], isGuide: true),
            UserModel(name: "이몽룡", profileImage: "subway", gender: "남성", location: "부산광역시", language: ["한국어", "영어", "일본어"], isGuide: true),
            UserModel(name: "성춘향", profileImage: "subway", gender: "남성", location: "서울특별시", language: ["한국어", "중국어"], isGuide: true),
        ]
    }
}
